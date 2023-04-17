class PostsController < ApplicationController
  def index
    user_id = params[:user_id] || 1
    @user = User.includes(:posts).find(user_id) || {}
  end

  def show
    user_id = params[:user_id]
    post_id = params[:id]
    @user = User.find(user_id)
    @post = @user.posts.includes(:comments, :likes).where(id: post_id).first
  end

  def new
    @current = current_user
  end

  def create
    new_post = current_user.posts.build(post_params)

    respond_to do |format|
      format.html do
        if new_post.save
          redirect_to user_posts_path(new_post.user_id), notice: 'Post created successfully'
        else
          render :new, alert: 'An error occured. Please try again!'
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end

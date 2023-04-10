# Rails Blog App - QUIZ 2 - Rails Unit

> A fully functional blog app written in Ruby on Rails as a learning exercise.

## About 

### Features

- Create a post
- List all posts by users
- Post details
- User details
- Like posts
- Comment posts

The app is built to match the following Entity Relationship Diagram:

![Blog App ERD](images/blog_app_erd.png)


### Prerequisites

  * Make sure you have Ruby installed in your system. You can install it [here](https://www.ruby-lang.org/en/documentation/installation/)

  * Get started with [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html).

  * Make sure you have [PostgreSQL](https://www.postgresql.org/) installed and running.

### Setup

  * Clone this repository by running `git clone https://github.com/Kingjosh007/rails-blog-app` in your command line.

  * Navigate to the repository by running `cd rails-blog-app`.

  * Run `bundle install` to install all the gems.

### Running the app

  *  Run rake `db:create:all` and `rake db:migrate`
  *  Run `rake db:seed` to populate the database with some sample data.
  *  Run `rails s` to start the server.
  *  In your browser, go to `http://localhost:3000`.
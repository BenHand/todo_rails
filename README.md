README

# Todo_List Rails App
  *  Using URLs and parameters via the <a href="https://chrome.google.com/webstore/detail/postman-rest-client/
      fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en">Postman</a> chrome app, you are able to add/edit/delete/view the contents of a todo list.

## Do the following to use this program

* Fork this repo.
* Clone this repo.
* `bundle install` to install all gems required.
* `rake db:migrate` to run the migration and update the database.
* `rake db:seed` to populate your db with 50 randomly generated todos(via <a href="https://rubygems.org/gems/faker/versions/1.4.3">faker</a>).
* `rails s` to start your local server.

Things you may want to cover:

* Ruby version 4.2.1

* System dependencies

* Configuration





Todo_List tree

```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   └── todo_list.coffee
│   │   └── stylesheets
│   │       ├── application.css
│   │       └── todo_list.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   └── todo_list_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   └── todo_list_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── concerns
│   │   └── todo_list.rb
│   └── views
│       ├── layouts
│       │   └── application.html.erb
│       └── todo_list
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── db
│   ├── development.sqlite3
│   ├── migrate
│   │   └── 20150603174622_create_todo_lists.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── controllers
│   │   └── todo_list_controller_test.rb
│   ├── fixtures
│   │   └── todo_lists.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   └── todo_list_test.rb
│   └── test_helper.rb
├── tmp
│   ├── cache
│   │   └── assets
│   ├── pids
│   │   └── server.pid
│   ├── sessions
│   └── sockets
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets

43 directories, 53 files
```

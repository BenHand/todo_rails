README

# Todo_List Rails App
  *  Using URLs and parameters via the <a href="https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en">Postman</a> chrome app, you are able to add/edit/delete/view the contents of a todo list.
  * This app has a TodoList table with a body(string, null: false) and complete(boolean, default: false) column as
      well as created_at and updated_at timestamps.


* Rails version 4.2.1


## Do the following to use this program

* Fork this repo.
* Clone this repo.
* `bundle install` to install all gems required.
* `rake db:migrate` to run the migration and update the database.
* `rake db:seed` to populate your db with 50 randomly generated todos(via <a href="https://rubygems.org/gems/faker/versions/1.4.3">faker</a>).
* `rails s` to start your local server.



## Use the following URLs and parameters to make use of this program. (06-08-2015) can now
  go to the localhost:3000 and use the app interactively using html as well as via postman.g
```
* GET http://localhost:3000/todos
          will display all todos

* GET http://localhost:3000/todos/new
          will display a new 'empty' todo

* GET http://localhost:3000/todos/1
          will display the todo with specified id# (1 in this case)

* GET http://localhost:3000/todos/8989898
          will display {"Couldn't find TodoList with 'id'=1. Total # of users = 51"}

* POST http://localhost:3000/todos    with params { "body": "todo task" }
          will display {"id":54,"body":"todo task","complete":false,
          "created_at":"2015-06-03T18:48:31.036Z","updated_at":"2015-06-03T18:48:31.036Z"}

* DELETE http://localhost:3000/todos/4
          will display the id and body of todo that has been deleted
          {(4) Minima neque eaque velit quaerat et. has been deleted}

* PUT http://localhost:3000/todos/6 with params { "completed": "true"}
          will display the id, body and completed status of todo reflecting changes requested
          (6) Nobis reprehenderit optio aliquid magni dicta nesciunt. true
```





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

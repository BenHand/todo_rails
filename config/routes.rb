Rails.application.routes.draw do

get '/todos', to: 'todo_list#index'
get '/todos/new', to: 'todo_list#new'
end

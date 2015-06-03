Rails.application.routes.draw do

get '/todos', to: 'todo_list#index'
end

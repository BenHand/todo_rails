Rails.application.routes.draw do


get '/todos', to: 'todo_list#index'
get '/todos/new', to: 'todo_list#new'
get '/todos/find', to: 'todo_list#show'

post '/todos', to: 'todo_list#create'

delete '/todos/delete', to: 'todo_list#destroy'

put '/todos/:id', to: 'todo_list#update'

root to: 'todo_list#index'

resources :todo_lists

end

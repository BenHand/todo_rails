class TodoListController < ApplicationController

  def index
    render json: TodoList.all
  end

end

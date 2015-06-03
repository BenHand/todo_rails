class TodoListController < ApplicationController

  def index
    render json: TodoList.all
  end

  def new
    render json: TodoList.create(body: '')
  end

  def show
    render json: TodoList.find(params[:id])
  end

end

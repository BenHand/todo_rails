class TodoListController < ApplicationController

  def index
    render json: TodoList.all, status: 200
  end

  def new
    render json: TodoList.create(body: ''), status: 200
  end

  def show
    begin
      render json: TodoList.find(params[:id]), status: 200
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: "#{error.message}. Total # of users = #{TodoList.count}" }, status: 404
    end
  end

end

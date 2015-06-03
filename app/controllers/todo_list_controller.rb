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

  def create
    entry = TodoList.create(body: params[:body])
    render json: entry, status: 200
  end

  def destroy
    begin
      entry = TodoList.find(params[:id])
      render json: "(#{entry.id}) #{entry.body} has been deleted", status: 200
      TodoList.destroy(entry)
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: error.message }, status: 404
    end
  end

  def update
    begin
      entry = TodoList.find(params[:id])
      entry.body = params[:body] if params[:body].present?
      entry.complete = params[:complete] if params[:complete].present?
      render json: "(#{entry.id}) #{entry.body} #{entry.complete}", status: 200
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: error.message }, status: 404
    end
  end

end

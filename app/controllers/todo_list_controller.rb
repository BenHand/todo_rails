class TodoListController < ApplicationController

  def index
    render json: TodoList.all
  end

  def new
    render json: TodoList.create(body: '')
  end

  def show
    begin
      render json: TodoList.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: "#{error.message}. Total # of users = #{TodoList.count}" }, status: 404
    end
  end

  def create
    entry = TodoList.create(body: params[:body])
    render json: entry
  end

  def destroy
    begin
      entry = TodoList.find(params[:id])
      render json: "(#{entry.id}) #{entry.body} has been deleted"
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
      entry.save!
      render json: "(#{entry.id}) #{entry.body} #{entry.complete}"
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: error.message }, status: 404
    end
  end

end

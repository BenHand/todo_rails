class TodoListController < ApplicationController

  def index
    all_todos = TodoList.all
    respond_to do |format|
      format.html do
        render 'index.html.erb', locals: { todos: all_todos }
      end
      format.json do
        render json: all_todos
      end
    end
  end

  def new
    render 'index.html.erb'
  end


  def show
    begin
      found_todo = TodoList.find(params[:id])
      respond_to do |format|
        format.html do
          render 'show.html.erb', locals: { todos: found_todo }
        end
        format.json do
          render json: found_todo
        end
      end
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: "#{error.message}. Total # of users = #{TodoList.count}" }, status: 404
    end
  end


  def create
    new_todo = TodoList.create(body: params[:body])
    respond_to do |format|
      format.html do
        render 'index.html.erb', locals: { todos: TodoList.all }
      end
      format.json do
        render json: new_todo
      end
    end
  end

  def destroy
    begin
      params[:todo_ids].each do |todo|
        if TodoList.find(todo.to_i)
          TodoList.destroy(todo.to_i)
        end
      end
      all_todos = TodoList.all
      respond_to do |format|
        format.html do
          render 'index.html.erb', locals: { todos: all_todos }
        end
        format.json do
          render json: all_todos
        end
      end
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: error.message }, status: 404
    end
  end

  def update
    begin
      if params[:todo_ids].present?
        id = params[:todo_ids][0].to_i
      else
        id = TodoList.find(params[:id])
      end

      entry = TodoList.find(id)
      entry.body = params[:body] if params[:body].present?
      if params[:complete] == "true"
        entry.complete = true
      end
      entry.save!
      respond_to do |format|
        format.html do
          render 'show.html.erb', locals: { todos: entry }
        end
        format.json do
          render json: entry
        end
      end
    rescue ActiveRecord::RecordNotFound => error
      render json: { message: error.message }, status: 404
    end
  end

end

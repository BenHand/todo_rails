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
    render 'new.html.erb'
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
        render 'new.html.erb', locals: { todos: new_todo }
      end
      format.json do
        render json: new_todo
      end
    end
  end

  def destroy
      params[:todo_ids].each do |todo|
        if TodoList.find(todo.to_i)
          TodoList.destroy(todo.to_i)
        end
      end
      all_todos = TodoList.all
      render 'index.html.erb', locals: { todos: all_todos }
    # begin
    #   found_todo = TodoList.find(params[:id])
    #   repsond_to do |format|
    #     format.html do
    #       render 'destroy.html.erb', locals: { todos: found_todo }
    #       TodoList.destroy(entry)
    #     end
    #     format.json do
    #       render json: "(#{found_todo.id}) #{found_todo.body} has been deleted"
    #       TodoList.destroy(entry)
    #     end
    #   end
    # rescue ActiveRecord::RecordNotFound => error
    #   render json: { message: error.message }, status: 404
    # end
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

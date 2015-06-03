class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :body, null: false
      t.boolean :complete, default: false

      t.timestamps null: false
    end
  end
end

class CreateTodoList < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.string :title 
      t.string :status
      # t.integer :integer
    
      t.timestamps
    end
  end
end

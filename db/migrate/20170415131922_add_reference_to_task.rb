class AddReferenceToTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :parent_task, references: :tasks, index: true
    add_foreign_key :tasks, :tasks, column: :parent_task_id
  end
end

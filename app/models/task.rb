class Task < ApplicationRecord
  enum status: { active: 0, archived: 1 }
    
  has_many :subtasks, class_name: "Task",
                      foreign_key: "task_id"
  belongs_to :task, class_name: "Task"                   
end

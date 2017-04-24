# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_id    :integer
#  status     :integer
#

class Task < ApplicationRecord
  enum status: { active: 0, archived: 1 }

  has_many :subtasks, class_name: "Task",
                      foreign_key: "task_id"
  belongs_to :parent_task, class_name: "Task", optional: true

  validates :name, presence: true
end

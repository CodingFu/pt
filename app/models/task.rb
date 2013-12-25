class Task < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :subject
  has_many :task_assignments, dependent: :destroy
  has_many :users, through: :task_assignments
end

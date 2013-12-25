class TaskAssignment < ActiveRecord::Base
  STATUSES = ["todo", "review", "done"]
  belongs_to :task
  belongs_to :user
end

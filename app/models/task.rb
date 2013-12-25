class Task < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :subject
  has_many :task_assignments, dependent: :destroy
  has_many :users, through: :task_assignments

  after_create do
    User.students.each do |user|
      TaskAssignment.create!(user: user, task: self, status: "todo")
    end
  end

  def status_for_user(user)
    task_assignments.where(user: user).first.try :status
  end
end

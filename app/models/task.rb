class Task < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :subject, through: :lesson
end

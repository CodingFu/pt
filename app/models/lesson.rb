class Lesson < ActiveRecord::Base
  belongs_to :subject
  has_many :tasks
end

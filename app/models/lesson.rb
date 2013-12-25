class Lesson < ActiveRecord::Base
  KINDS = ['lecture', 'practice']
  belongs_to :subject
  has_many :tasks, dependent: :destroy
end

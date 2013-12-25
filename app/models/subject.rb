class Subject < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :lessons, dependent: :destroy
  has_many :tasks, through: :lessons
end

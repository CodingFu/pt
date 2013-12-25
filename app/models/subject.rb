class Subject < ActiveRecord::Base
  belongs_to :owner_id, class_name: "User"
  has_many :lessons
  has_many :tasks, through: :lessons
end

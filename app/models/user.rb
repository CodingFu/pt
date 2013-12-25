class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects, foreign_key: 'owner_id', dependent: :destroy
  has_many :task_assignments, dependent: :destroy
  has_many :tasks, through: :task_assignments

  scope :students, ->{ where(is_teacher: false) }
  scope :teachers, ->{ where(is_teacher: true) }
end

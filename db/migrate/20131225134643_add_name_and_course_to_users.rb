class AddNameAndCourseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :course, :integer
  end
end

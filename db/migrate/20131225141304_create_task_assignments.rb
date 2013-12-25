class CreateTaskAssignments < ActiveRecord::Migration
  def change
    create_table :task_assignments do |t|
      t.belongs_to :task, index: true
      t.belongs_to :user, index: true
      t.string :status

      t.timestamps
    end
  end
end

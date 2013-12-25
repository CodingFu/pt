class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :lesson, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

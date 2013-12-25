class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.belongs_to :owner, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

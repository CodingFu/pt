class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.belongs_to :subject_id, index: true
      t.string :name
      t.string :kind
      t.date :date

      t.timestamps
    end
  end
end

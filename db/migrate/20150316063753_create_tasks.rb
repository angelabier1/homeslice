class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :size
      t.date :due_date
      t.time :due_time

      t.timestamps null: false
    end
  end
end

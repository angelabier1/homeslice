class CreateTasks < ActiveRecord::Migration
  def change
    drop_table :tasks
    create_table :tasks do |t|
      t.string :title
      t.text :long_description
      t.string :short_description
      t.date :task_date
      t.time :task_time
      t.references :user, index: true
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :tasks, :users
  end
end

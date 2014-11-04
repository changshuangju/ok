class CreateSheets < ActiveRecord::Migration
  def up
    create_table :sheets do |t|
      t.integer :student_number
      t.string :student_name
      t.integer :project 
      t.integer :labs
      t.integer :discussions
      t.integer :test
      t.integer :final
      t.timestamps
    end
  end
  def down
    drop_table :sheets
  end
end

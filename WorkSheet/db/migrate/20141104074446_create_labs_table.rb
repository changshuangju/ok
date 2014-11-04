class CreateLabsTable < ActiveRecord::Migration
  def up
    create_table :experiments do |t|
      t.integer :lab1
      t.integer :lab2
      t.integer :lab3
      t.integer :lab4
      t.integer :lab5
      t.integer :lab6
      t.integer :lab7
      t.integer :sheet_id
   end
  end
  def down
    drop_table :experiments
  end
end

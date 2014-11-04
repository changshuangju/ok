class CreateDiscussionsTable < ActiveRecord::Migration
  def up
    create_table :talks do |t|
      t.integer :discussion1
      t.integer :discussion2
      t.integer :discussion3
      t.integer :discussion4
      t.integer :discussion5
      t.integer :discussion6
      t.integer :discussion7
      t.integer :discussion8
      t.integer :discussion9
      t.integer :discussion10
      t.integer :discussion11
      t.integer :sheet_id
    end
  end

  def down
    drop_table :talks
  end
end

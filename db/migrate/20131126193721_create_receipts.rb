class CreateReceipts < ActiveRecord::Migration
  def up
    create_table :receipts do |t|
      t.datetime :date
      t.float :cost
      t.string :store
      t.string :payment
      t.string :usern
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :receipts # deletes the whole table and all its data!
  end
end

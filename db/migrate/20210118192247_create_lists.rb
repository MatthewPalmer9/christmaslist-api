class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :user_id
      t.integer :listitem_id

      t.timestamps
    end 
  end
end

class CreateListitems < ActiveRecord::Migration[6.0]
  def change
    create_table :listitems do |t|
      t.string :description 
      t.string :url 
      t.integer :list_id
      t.integer :user_id

      t.timestamps
    end 
  end
end

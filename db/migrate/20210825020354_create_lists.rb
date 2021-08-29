class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :image_url
      t.string :name
      t.string :url
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
      
      t.index [:user_id, :list_id], unique: true
    end
  end
end

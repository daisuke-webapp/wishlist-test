class AddItemCodeToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :item_code, :string
  end
end

class AddCartypeIdToTaxi2 < ActiveRecord::Migration[5.1]
  def change
    add_column :taxis, :cartype_id, :integer
    add_index :taxis, :cartype_id
  end
end

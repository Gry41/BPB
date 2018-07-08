class CreateTaxis < ActiveRecord::Migration[5.1]
  def change
    create_table :taxis do |t|
      t.string :driver_name
      t.integer :places

      t.timestamps
    end
  end
end

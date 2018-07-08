class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :facilities
      t.string :description
      t.string :time
      t.string :price

      t.timestamps
    end
  end
end

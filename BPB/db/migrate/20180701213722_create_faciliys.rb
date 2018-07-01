class CreateFaciliys < ActiveRecord::Migration[5.1]
  def change
    create_table :faciliys do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateIdiomas < ActiveRecord::Migration[5.1]
  def change
    create_table :idiomas do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateFacilitiesRentsRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities_rents_relationships do |t|

      t.timestamps
    end
  end
end

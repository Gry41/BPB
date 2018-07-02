class Rent < ApplicationRecord
    
    has_and_belongs_to_many :facilities, join_table: "facilities_rents", foreign_key: "facility_id"
   belongs_to :location
   accepts_nested_attributes_for :facilities
end
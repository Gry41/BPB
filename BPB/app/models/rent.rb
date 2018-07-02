class Rent < ApplicationRecord  
   has_many :facilities, :through facilities_rents_relationships
belongs_to :location
end
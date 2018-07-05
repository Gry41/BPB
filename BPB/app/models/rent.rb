class Rent < ApplicationRecord
    include ActionView::Helpers::TextHelper 
   has_and_belongs_to_many :facilities
   has_and_belongs_to_many :languages
   has_and_belongs_to_many :services
   belongs_to :location
   #accepts_nested_attributes_for :facilities
end
class Taxi < ApplicationRecord
    has_and_belongs_to_many :languages
    belongs_to :cartype
end
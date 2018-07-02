class Facility < ApplicationRecord
    has_and_belongs_to_many :rents, :throuh facilities_rents_relationship
end


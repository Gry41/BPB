class Facility < ApplicationRecord
    has_and_belongs_to_many :rents
    has_and_belongs_to_many :rents, join_table: "facilities_rents", foreign_key: "rent_id"
end

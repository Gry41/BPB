class FacilitiesRentsRelationship < ApplicationRecord
belongs_to :facility
belongs_to :rent 
end

class Apartment < ApplicationRecord
    has_many :tenants
    belongs_to :tenant
    has_many :leases
end

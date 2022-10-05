class Tenant < ApplicationRecord
    has_many :leases, dependent: :destroy
    has_many :apartments, through: :leases

    validations :name, presence: true
    validations :age, numericality: {greater_than_or_equal_to: 18}
end

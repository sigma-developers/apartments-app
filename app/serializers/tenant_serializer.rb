class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  # has_many :leases
end

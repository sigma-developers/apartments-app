class AddApartmentIdToLeases < ActiveRecord::Migration[7.0]
  def change
    add_column :leases, :apartment_id, :integer
  end
end

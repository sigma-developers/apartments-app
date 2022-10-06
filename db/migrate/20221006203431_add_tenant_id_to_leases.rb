class AddTenantIdToLeases < ActiveRecord::Migration[7.0]
  def change
    add_column :leases, :tenant_id, :integer
  end
end

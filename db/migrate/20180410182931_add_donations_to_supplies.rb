class AddDonationsToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :donations, :integer, default: 0
  end
end

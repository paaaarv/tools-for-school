class AddDonationsToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :donations, :float, default: 0
  end
end

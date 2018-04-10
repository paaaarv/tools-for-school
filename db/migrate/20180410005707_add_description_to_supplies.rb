class AddDescriptionToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :description, :string
  end
end

class AddAddressToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :address, :string
  end
end

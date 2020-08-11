class AddPhoneToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :phone, :string
  end
end

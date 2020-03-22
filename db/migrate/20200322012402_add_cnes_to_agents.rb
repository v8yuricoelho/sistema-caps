class AddCnesToAgents < ActiveRecord::Migration[6.0]
  def change
    add_reference :agents, :cnes
  end
end

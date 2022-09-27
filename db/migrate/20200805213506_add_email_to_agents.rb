# frozen_string_literal: true

class AddEmailToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :email, :string
  end
end

# frozen_string_literal: true

class AddAgentToPatients < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :agent
  end
end

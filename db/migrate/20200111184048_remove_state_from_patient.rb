# frozen_string_literal: true

class RemoveStateFromPatient < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :state, :string
  end
end

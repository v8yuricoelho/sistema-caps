# frozen_string_literal: true

class RemovePsychoativeSubstancesFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :psychoative_substances, :string
  end
end

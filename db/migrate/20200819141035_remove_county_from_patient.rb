# frozen_string_literal: true

class RemoveCountyFromPatient < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :county
  end
end

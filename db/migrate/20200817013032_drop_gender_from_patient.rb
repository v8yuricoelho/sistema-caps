# frozen_string_literal: true

class DropGenderFromPatient < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :gender
  end
end

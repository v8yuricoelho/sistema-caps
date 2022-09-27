# frozen_string_literal: true

class AddGenderToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :gender, :integer
  end
end

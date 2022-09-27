# frozen_string_literal: true

class AddStatusAsIntegerToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :status, :integer
  end
end

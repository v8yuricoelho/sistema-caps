# frozen_string_literal: true

class DeleteStatusFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :status
  end
end

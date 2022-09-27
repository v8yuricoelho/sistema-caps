# frozen_string_literal: true

class RemovePatientIdFromCnes < ActiveRecord::Migration[6.0]
  def change
    remove_column :cnes, :patient_id
  end
end

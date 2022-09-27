# frozen_string_literal: true

class RemoveColumnsFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :medicine_name
    remove_column :appointments, :medicine_dose
  end
end

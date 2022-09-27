# frozen_string_literal: true

class RemoveMedicineDosageFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :medicine_dosage
  end
end

# frozen_string_literal: true

class AddPatientToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :patient
  end
end

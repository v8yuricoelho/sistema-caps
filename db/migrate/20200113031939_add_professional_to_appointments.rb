# frozen_string_literal: true

class AddProfessionalToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :professional
  end
end

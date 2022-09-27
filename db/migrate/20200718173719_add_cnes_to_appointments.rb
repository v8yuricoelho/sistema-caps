# frozen_string_literal: true

class AddCnesToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :cnes
  end
end

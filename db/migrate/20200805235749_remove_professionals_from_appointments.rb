# frozen_string_literal: true

class RemoveProfessionalsFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :appointments, :professional, index: true
  end
end

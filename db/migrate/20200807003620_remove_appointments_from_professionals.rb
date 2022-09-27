# frozen_string_literal: true

class RemoveAppointmentsFromProfessionals < ActiveRecord::Migration[6.0]
  def change
    remove_reference :professionals, :appointments
  end
end

# frozen_string_literal: true

class ChangeAppointmentRelationWithProfessionals < ActiveRecord::Migration[6.0]
  def change
    add_reference :professionals, :appointments
  end
end

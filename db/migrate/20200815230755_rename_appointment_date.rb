# frozen_string_literal: true

class RenameAppointmentDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :appointment_date, :date
  end
end

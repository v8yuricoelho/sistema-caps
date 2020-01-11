class RenameHealthCaresToAppointments < ActiveRecord::Migration[6.0]
  def change
    rename_table :health_cares, :appointments
  end
end

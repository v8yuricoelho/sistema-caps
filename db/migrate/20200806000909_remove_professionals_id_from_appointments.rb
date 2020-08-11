class RemoveProfessionalsIdFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :professionals_id
  end
end

class AddHourToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :to_hour, :string
    add_column :appointments, :from_hour, :string
  end
end

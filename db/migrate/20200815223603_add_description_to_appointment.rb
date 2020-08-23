class AddDescriptionToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :description, :string
  end
end

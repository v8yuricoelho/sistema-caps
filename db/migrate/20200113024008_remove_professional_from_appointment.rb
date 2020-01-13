class RemoveProfessionalFromAppointment < ActiveRecord::Migration[6.0]
  def change

    remove_column :appointments, :professional_name, :string

    remove_column :appointments, :professional_function, :string
  end
end

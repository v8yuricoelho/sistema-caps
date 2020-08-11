class ChangeProfessionalRelationWithAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :professionals
  end
end

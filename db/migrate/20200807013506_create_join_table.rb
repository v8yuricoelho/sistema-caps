class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :professionals, :appointments do |t|
      # Os nomes precisaram ser alterados devido a problemas com limite de caracteres
      t.index [:professional_id, :appointment_id], name: 'index_profs_appts_on_professional_id_and_appointment_id'
      t.index [:appointment_id, :professional_id], name: 'index_profs_appts_on_appointment_id_and_professional_id'
    end
  end
end
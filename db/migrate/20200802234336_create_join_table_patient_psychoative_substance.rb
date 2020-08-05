class CreateJoinTablePatientPsychoativeSubstance < ActiveRecord::Migration[6.0]
  def change
    create_join_table :patients, :psychoative_substances do |t|
      # Os nomes precisaram ser alterados devido a problemas com limite de caracteres
      t.index [:patient_id, :psychoative_substance_id], name: 'index_patients_psubs_on_patient_id_and_psychoative_substance_id'
      t.index [:psychoative_substance_id, :patient_id], name: 'index_patients_psubs_on_psychoative_substance_id_and_patient_id'
    end
  end
end

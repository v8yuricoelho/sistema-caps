class CreatePatientsPsychoSubstancesJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :patients_psycho_substances, id: false do |t|
      t.bigint :patient_id
      t.bigint :psychoative_substance_id
    end
  
    add_index :patients_psycho_substances, :patient_id
    add_index :patients_psycho_substances, :psychoative_substance_id
  end
end

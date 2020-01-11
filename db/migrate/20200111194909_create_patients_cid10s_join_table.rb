class CreatePatientsCid10sJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :patients_cid10s, id: false do |t|
      t.bigint :patient_id
      t.bigint :cid10_id
    end

    add_index :patients_cid10s, :patient_id
    add_index :patients_cid10s, :cid10_id
  end
end

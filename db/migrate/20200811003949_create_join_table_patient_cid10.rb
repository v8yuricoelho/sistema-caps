# frozen_string_literal: true

class CreateJoinTablePatientCid10 < ActiveRecord::Migration[6.0]
  def change
    create_join_table :patients, :cid10s do |t|
      t.index %i[patient_id cid10_id]
      t.index %i[cid10_id patient_id]
    end
  end
end

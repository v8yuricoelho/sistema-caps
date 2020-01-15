class AddCnesToPatients < ActiveRecord::Migration[6.0]
    def change
      add_reference :patients, :cnes
    end
  end
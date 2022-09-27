# frozen_string_literal: true

class RenamePacientsToPatients < ActiveRecord::Migration[6.0]
  def change
    rename_table :pacients, :patients
  end
end

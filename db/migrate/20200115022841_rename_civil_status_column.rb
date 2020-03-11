class RenameCivilStatusColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :civil_status, :marital_status
  end
end

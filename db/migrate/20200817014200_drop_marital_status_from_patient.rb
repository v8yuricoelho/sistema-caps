class DropMaritalStatusFromPatient < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :marital_status
  end
end

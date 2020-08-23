class AddMaritalStatusToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :marital_status, :integer
  end
end

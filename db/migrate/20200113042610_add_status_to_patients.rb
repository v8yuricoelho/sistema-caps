class AddStatusToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :status, :boolean
  end
end

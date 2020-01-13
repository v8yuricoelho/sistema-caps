class AddNameToProfessionals < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :name, :string
  end
end

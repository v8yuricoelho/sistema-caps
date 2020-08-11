class AddEmailToProfessionals < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :email, :string
  end
end

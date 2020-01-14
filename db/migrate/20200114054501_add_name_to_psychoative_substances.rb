class AddNameToPsychoativeSubstances < ActiveRecord::Migration[6.0]
  def change
    add_column :psychoative_substances, :name, :string
  end
end

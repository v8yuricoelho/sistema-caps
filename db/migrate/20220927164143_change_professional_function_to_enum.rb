class ChangeProfessionalFunctionToEnum < ActiveRecord::Migration[6.0]
  def change
    remove_column :professionals, :function
    add_column :professionals, :function, :integer, null: false
  end
end

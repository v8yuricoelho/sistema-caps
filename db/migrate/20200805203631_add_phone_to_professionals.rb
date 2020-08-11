class AddPhoneToProfessionals < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :phone, :string
  end
end

class AddCnesToProfessional < ActiveRecord::Migration[6.0]
  def change
    add_reference :cnes, :professionals
  end
end

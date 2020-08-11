class AddProfessionalToCnes < ActiveRecord::Migration[6.0]
  def change
    add_reference :professionals, :cnes
  end
end

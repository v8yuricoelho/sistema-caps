class CreateHealthCares < ActiveRecord::Migration[6.0]
  def change
    create_table :health_cares do |t|
      t.date :date
      t.string :medicine_name
      t.float :medicine_dose
      t.string :medicine_dosage

      t.timestamps
    end
  end
end

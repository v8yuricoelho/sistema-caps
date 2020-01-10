class CreateCnes < ActiveRecord::Migration[6.0]
  def change
    create_table :cnes do |t|
      t.integer :code
      t.string :unity

      t.timestamps
    end
  end
end

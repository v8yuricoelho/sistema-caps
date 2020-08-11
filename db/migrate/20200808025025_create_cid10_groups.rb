class CreateCid10Groups < ActiveRecord::Migration[6.0]
  def change
    create_table :cid10_groups do |t|
      t.integer :number
      t.string :begin
      t.string :final
      t.string :description

      t.timestamps
    end
  end
end

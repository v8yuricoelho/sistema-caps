class CreateCid10s < ActiveRecord::Migration[6.0]
  def change
    create_table :cid10s do |t|
      t.string :code
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end

class CreateCid10Categories < ActiveRecord::Migration[6.0]
  def change
    create_table :cid10_categories do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end

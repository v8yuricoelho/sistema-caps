class CreateCid10Chapters < ActiveRecord::Migration[6.0]
  def change
    create_table :cid10_chapters do |t|
      t.integer :number
      t.string :begin
      t.string :end
      t.string :description

      t.timestamps
    end
  end
end

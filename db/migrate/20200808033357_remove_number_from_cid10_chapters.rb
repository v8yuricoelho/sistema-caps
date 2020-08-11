class RemoveNumberFromCid10Chapters < ActiveRecord::Migration[6.0]
  def change
    remove_column :cid10_chapters, :number
  end
end

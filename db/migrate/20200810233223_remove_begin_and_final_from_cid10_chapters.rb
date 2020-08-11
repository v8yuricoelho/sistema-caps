class RemoveBeginAndFinalFromCid10Chapters < ActiveRecord::Migration[6.0]
  def change
    remove_column :cid10_chapters, :begin
    remove_column :cid10_chapters, :final
  end
end

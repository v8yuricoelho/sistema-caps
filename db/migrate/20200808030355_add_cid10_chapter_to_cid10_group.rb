class AddCid10ChapterToCid10Group < ActiveRecord::Migration[6.0]
  def change
    add_reference :cid10_groups, :cid10_chapter, index: true
  end
end

class RemoveCid10Tables < ActiveRecord::Migration[6.0]
  def change
    drop_table :cid10_chapters
    drop_table :cid10_groups
    drop_table :cid10_categories
  end
end

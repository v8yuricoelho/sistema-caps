class RemoveNumberFromCid10Groups < ActiveRecord::Migration[6.0]
  def change
    remove_column :cid10_groups, :number
  end
end

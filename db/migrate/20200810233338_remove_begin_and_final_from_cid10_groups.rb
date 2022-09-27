# frozen_string_literal: true

class RemoveBeginAndFinalFromCid10Groups < ActiveRecord::Migration[6.0]
  def change
    remove_column :cid10_groups, :begin
    remove_column :cid10_groups, :final
  end
end

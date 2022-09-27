# frozen_string_literal: true

class FixColumnEnd < ActiveRecord::Migration[6.0]
  def change
    rename_column :cid10_chapters, :end, :final
  end
end

# frozen_string_literal: true

class CreateCid10s < ActiveRecord::Migration[6.0]
  def change
    create_table :cid10s do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end

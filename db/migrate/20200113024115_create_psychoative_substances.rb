# frozen_string_literal: true

class CreatePsychoativeSubstances < ActiveRecord::Migration[6.0]
  def change
    create_table :psychoative_substances do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end

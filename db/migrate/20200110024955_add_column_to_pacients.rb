# frozen_string_literal: true

class AddColumnToPacients < ActiveRecord::Migration[6.0]
  def change
    add_column :pacients, :psychoative_substances, :string
  end
end

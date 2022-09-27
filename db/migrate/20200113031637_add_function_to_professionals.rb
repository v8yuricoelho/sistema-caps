# frozen_string_literal: true

class AddFunctionToProfessionals < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :function, :string
  end
end

# frozen_string_literal: true

class AddColumnsToHealthCare < ActiveRecord::Migration[6.0]
  def change
    add_column :health_cares, :professional_name, :string
    add_column :health_cares, :professional_function, :string
  end
end

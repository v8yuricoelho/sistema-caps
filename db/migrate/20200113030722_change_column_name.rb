# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :date, :appointment_date
  end
end

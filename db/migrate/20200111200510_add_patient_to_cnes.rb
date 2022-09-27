# frozen_string_literal: true

class AddPatientToCnes < ActiveRecord::Migration[6.0]
  def change
    add_reference :cnes, :patient
  end
end

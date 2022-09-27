# frozen_string_literal: true

class CreateJoinTablePatientPsychoativeSubstance < ActiveRecord::Migration[6.0]
  def change
    create_join_table :patients, :psychoative_substances
  end
end

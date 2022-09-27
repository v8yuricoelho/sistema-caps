# frozen_string_literal: true

class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals, &:timestamps
  end
end

# frozen_string_literal: true

class CreatePacients < ActiveRecord::Migration[6.0]
  def change
    create_table :pacients do |t|
      t.integer :medical_record_number
      t.string :name
      t.string :gender
      t.date :birthdate
      t.date :admission_date
      t.integer :age
      t.string :civil_status
      t.string :mother_name
      t.string :father_name
      t.string :sus_card
      t.string :cpf
      t.string :rg
      t.string :county
      t.string :state
      t.string :adress
      t.string :phone

      t.timestamps
    end
  end
end

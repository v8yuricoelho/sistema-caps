# frozen_string_literal: true

class Professional < ApplicationRecord
  enum function: ['Psicólogo(a)', 'Psiquiatra', 'Enfermeiro(a)', 'Serviços Auxiliares']

  validates :name, presence: true
  validates :function, presence: true
  validates :email, uniqueness: true
  validates :phone, uniqueness: true, case_sensitive: false

  belongs_to :cnes
end

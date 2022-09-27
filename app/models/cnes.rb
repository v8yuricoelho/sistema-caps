# frozen_string_literal: true

class Cnes < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :unity, presence: true, uniqueness: true

  has_many :agents
  has_many :appointments
  has_many :patients
  has_many :professionals
end

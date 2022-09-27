# frozen_string_literal: true

class Professional < ApplicationRecord
  validates :name, presence: true
  validates :function, presence: true

  belongs_to :cnes
  has_many :patients, through: :appointments
  has_and_belongs_to_many :appointments
end

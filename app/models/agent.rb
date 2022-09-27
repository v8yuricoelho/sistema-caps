# frozen_string_literal: true

class Agent < ApplicationRecord
  validates :name, presence: true
  validates :email, :phone, uniqueness: true

  belongs_to :cnes
  has_many :patients
end

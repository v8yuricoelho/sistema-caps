# frozen_string_literal: true

class Cid10 < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true

  has_and_belongs_to_many :patients
end

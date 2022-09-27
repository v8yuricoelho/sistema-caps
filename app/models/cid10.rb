# frozen_string_literal: true

class Cid10 < ApplicationRecord
  has_and_belongs_to_many :patients
end

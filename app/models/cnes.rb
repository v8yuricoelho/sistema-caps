class Cnes < ApplicationRecord
    validates :code, presence: true, uniqueness: true
    validates :unity, presence: true, uniqueness: true

    has_many :patients
    has_many :appointments
    has_many :agents
end

class PsychoativeSubstance < ApplicationRecord
    has_and_belongs_to_many :patients

    validates :name, presence: true, uniqueness: true
end

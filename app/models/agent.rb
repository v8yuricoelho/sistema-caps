class Agent < ApplicationRecord
    validates :name, presence: true

    belongs_to :cnes
    has_many :patients
end

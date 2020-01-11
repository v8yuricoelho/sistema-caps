class HealthCare < ApplicationRecord
    validates :date, presence: true
    validates :professional_name, presence: true
    validates :professional_function, presence: true

    belongs_to: patient
end

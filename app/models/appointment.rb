class HealthCare < ApplicationRecord
    validates :appointment_date, presence: true
    validates :professional_name, presence: true
    validates :professional_function, presence: true

    belongs_to :patient
    belongs_to :professional
end

class Appointment < ApplicationRecord
    validates :appointment_date, presence: true

    belongs_to :patient
    belongs_to :professional
    belongs_to :cnes
end

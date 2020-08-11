class Appointment < ApplicationRecord
    validates :appointment_date, presence: true

    belongs_to :cnes
    belongs_to :patient

    has_and_belongs_to_many :professionals
end

class Patient < ApplicationRecord
    validates :medical_record_number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :gender, presence: true
    validates :birthdate, presence: true
    validates :admission_date, presence: true 
    validates :age, presence: true
    validates :civil_status
    validates :mother_name
    validates :father_name
    validates :sus_card, presence: true, uniqueness: true, length: {is: 15}
    validates :cpf, presence: true, uniqueness: true, length: {is: 11}
    validates :rg, presence: true, uniqueness: true, length: {is: 11}
    validates :county, presence: true
    validates :state, presence: true

    belongs_to :cnes
    has_many :appointments
    has_many :professionals, through: :appointments
    has_and_belongs_to_many :cid10s
    has_and_belongs_to_many :psychoative_substances
end

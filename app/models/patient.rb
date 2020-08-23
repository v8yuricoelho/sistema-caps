class Patient < ApplicationRecord
    enum status: ['Ativo', 'Inativo']
    enum gender: ['Masculino', 'Feminino', 'Outro']
    enum marital_status: ['Solteiro(a)', 'Casado(a)', 'Divorciado(a)', 'Viúvo(a)', 'Separado(a)']

    validates :medical_record_number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :gender, presence: true
    validates :birthdate, presence: true
    validates :admission_date, presence: true 
    validates :age, presence: true
    # validates :marital_status, presence: true
    validates :sus_card, presence: true, uniqueness: true, length: {is: 15}
    validates :cpf, presence: true, uniqueness: true, length: {is: 11}
    validates :rg, presence: true, uniqueness: true, length: {in: 9..11}
    validates :adress, presence: true
    validates :status, presence: true

    belongs_to :cnes
    belongs_to :agent
    has_many :appointments
    has_many :professionals, through: :appointments
    has_and_belongs_to_many :cid10s
    has_and_belongs_to_many :psychoative_substances
end
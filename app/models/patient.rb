# frozen_string_literal: true

class Patient < ApplicationRecord
  before_validation :calculate_age, on: %i[create update]

  enum status: %w[Ativo Inativo]
  enum gender: %w[Masculino Feminino Outro]
  enum marital_status: ['Solteiro(a)', 'Casado(a)', 'Divorciado(a)', 'Viúvo(a)', 'Separado(a)']

  validates :medical_record_number, presence: true, uniqueness: true
  validates :name, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :admission_date, presence: true
  validates :sus_card, presence: true, uniqueness: true, length: { is: 15 }, case_sensitive: false
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }, case_sensitive: false
  validates :rg, presence: true, uniqueness: true, length: { in: 9..11 }, case_sensitive: false
  validates :adress, presence: true
  validates :phone, uniqueness: true
  validates :status, presence: true

  belongs_to :cnes
  belongs_to :agent
  has_and_belongs_to_many :cid10s
  has_and_belongs_to_many :psychoative_substances

  private

  def calculate_age
    self.age = ((Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
  end
end

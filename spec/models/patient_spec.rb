# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject { build(:patient) }

  describe 'associations' do
    it { should belong_to(:cnes).class_name('Cnes') }
    it { should belong_to(:agent).class_name('Agent') }
    it { should have_and_belong_to_many(:cid10s).class_name('Cid10') }
    it { should have_and_belong_to_many(:psychoative_substances).class_name('PsychoativeSubstance') }
  end

  describe 'validations' do
    it { should validate_presence_of(:medical_record_number) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:admission_date) }
    it { should validate_presence_of(:sus_card) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:rg) }
    it { should validate_presence_of(:adress) }
    it { should validate_presence_of(:status) }

    it { should validate_uniqueness_of(:medical_record_number) }
    it { should validate_uniqueness_of(:sus_card).case_insensitive }
    it { should validate_uniqueness_of(:cpf).case_insensitive }
    it { should validate_uniqueness_of(:rg).case_insensitive }

    it { should validate_length_of(:sus_card).is_equal_to(15) }
    it { should validate_length_of(:cpf).is_equal_to(11) }
    it { should validate_length_of(:rg).is_at_least(9).is_at_most(11) }

    it 'should have a birthdate' do
      expect(subject.birthdate).not_to be_nil
    end
  end
end

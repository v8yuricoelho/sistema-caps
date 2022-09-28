# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Professional, type: :model do
  subject { build(:professional) }

  describe 'associations' do
    it { should belong_to(:cnes).class_name('Cnes') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:function) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:phone).case_insensitive }
  end
end

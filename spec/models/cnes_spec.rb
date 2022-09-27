# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cnes, type: :model do
  describe 'associations' do
    it { should have_many(:agents).class_name('Agent') }
    it { should have_many(:appointments).class_name('Appointment') }
    it { should have_many(:patients).class_name('Patient') }
    it { should have_many(:professionals).class_name('Professional') }
  end

  describe 'validations' do
    it { should validate_presence_of(:code) }
    it { should validate_uniqueness_of(:code) }
    it { should validate_presence_of(:unity) }
    it { should validate_uniqueness_of(:unity) }
  end
end

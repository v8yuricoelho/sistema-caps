# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Agent, type: :model do
  describe 'associations' do
    it { should belong_to(:cnes).class_name('Cnes') }
    it { should have_many(:patients).class_name('Patient') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:phone) }
  end
end

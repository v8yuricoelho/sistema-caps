# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cid10, type: :model do
  describe 'associations' do
    it { should have_and_belong_to_many(:patients).class_name('Patient') }
  end

  describe 'validations' do
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:code) }
    it { should validate_uniqueness_of(:description) }
  end
end

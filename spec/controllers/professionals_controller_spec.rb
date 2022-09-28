# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfessionalsController, type: :controller do
  let(:professional) { create(:professional) }

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET show' do
    it 'renders the show template' do
      get :show, params: { id: professional.id }
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET new' do
    it 'renders the new template' do
      get :new
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET edit' do
    it 'renders the edit template' do
      get :edit, params: { id: professional.id }
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST create' do
    let(:cnes) { create(:cnes) }
    let(:professional_params) do
      {
        function: ['Psicólogo(a)', 'Psiquiatra', 'Enfermeiro(a)', 'Serviços Auxiliares'].sample,
        name: Faker::Name.name_with_middle,
        email: Faker::Internet.unique.free_email,
        phone: Faker::PhoneNumber.unique.cell_phone,
        address: Faker::Address.street_address,
        cnes_id: cnes.id
      }
    end

    it 'when validations are successful' do
      post :create, params: professional_params
      expect(response).to have_http_status '201'
      get :show, params: { id: Professional.find_by(email: professional_params[:email]).id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      professional_params[:name] = nil
      post :create, params: professional_params
      expect(response).to have_http_status '422'
      get :new
      expect(response).to have_http_status '200'
    end
  end

  describe 'PATCH update' do
    it 'when validations are successful' do
      patch :update, params: { id: professional.id, email: Faker::Internet.free_email }
      expect(response).to have_http_status '200'
      get :show, params: { id: professional.id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      patch :update, params: { id: professional.id, name: nil }
      expect(response).to have_http_status '422'
      get :edit, params: { id: professional.id }
      expect(response).to have_http_status '200'
    end
  end
end

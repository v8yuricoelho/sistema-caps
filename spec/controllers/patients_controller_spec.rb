# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  let(:patient) { create(:patient) }

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET show' do
    it 'renders the show template' do
      get :show, params: { id: patient.id }
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
      get :edit, params: { id: patient.id }
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST create' do
    let(:cnes) { create(:cnes) }
    let(:agent) { create(:agent) }
    let(:patient_params) do
      {
        medical_record_number: Faker::Number.unique.within(range: 1..500),
        name: Faker::Name.name_with_middle,
        birthdate: Faker::Date.between(from: 110.years.ago, to: 2.years.ago),
        gender: %w[Masculino Feminino Outro].sample,
        admission_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
        age: Faker::Number.between(from: 2, to: 110),
        marital_status: ['Solteiro(a)', 'Casado(a)', 'Divorciado(a)', 'Viúvo(a)', 'Separado(a)'].sample,
        mother_name: Faker::Name.name_with_middle,
        father_name: Faker::Name.name_with_middle,
        sus_card: Faker::Number.unique.number(digits: 15),
        cpf: Faker::IDNumber.unique.brazilian_citizen_number,
        rg: Faker::Number.unique.number(digits: 11),
        adress: Faker::Address.street_address,
        phone: Faker::PhoneNumber.cell_phone,
        status: %w[Ativo Inativo].sample,
        cnes_id: cnes.id,
        agent_id: agent.id
      }
    end

    it 'when validations are successful' do
      post :create, params: patient_params
      expect(response).to have_http_status '201'
      get :show, params: { id: Patient.find_by(rg: patient_params[:rg]).id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      patient_params[:cpf] = '123456'
      post :create, params: patient_params
      expect(response).to have_http_status '422'
      get :new
      expect(response).to have_http_status '200'
    end
  end

  describe 'PATCH update' do
    it 'when validations are successful' do
      patch :update, params: { id: patient.id, phone: Faker::PhoneNumber.cell_phone }
      expect(response).to have_http_status '200'
      get :show, params: { id: patient.id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      patch :update, params: { id: patient.id, cpf: '123456' }
      expect(response).to have_http_status '422'
      get :edit, params: { id: patient.id }
      expect(response).to have_http_status '200'
    end
  end
end

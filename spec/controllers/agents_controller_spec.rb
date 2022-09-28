# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AgentsController, type: :controller do
  let(:agent) { create(:agent) }

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to have_http_status '200'
    end
  end

  describe 'GET show' do
    it 'renders the show template' do
      get :show, params: { id: agent.id }
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
      get :edit, params: { id: agent.id }
      expect(response).to have_http_status '200'
    end
  end

  describe 'POST create' do
    let(:cnes) { create(:cnes) }
    let(:agent_params) do
      {
        name: Faker::Name.name_with_middle,
        email: Faker::Internet.free_email,
        phone: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.street_address,
        cnes_id: cnes.id
      }
    end

    it 'when validations are successful' do
      post :create, params: agent_params
      expect(response).to have_http_status '201'
      get :show, params: { id: Agent.find_by(email: agent_params[:email]).id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      agent_params[:name] = nil
      post :create, params: agent_params
      expect(response).to have_http_status '422'
      get :new
      expect(response).to have_http_status '200'
    end
  end

  describe 'PATCH update' do
    it 'when validations are successful' do
      patch :update, params: { id: agent.id, email: Faker::Internet.free_email }
      expect(response).to have_http_status '200'
      get :show, params: { id: agent.id }
      expect(response).to have_http_status '200'
    end

    it 'when validations are not successful' do
      patch :update, params: { id: agent.id, name: nil }
      expect(response).to have_http_status '422'
      get :edit, params: { id: agent.id }
      expect(response).to have_http_status '200'
    end
  end
end

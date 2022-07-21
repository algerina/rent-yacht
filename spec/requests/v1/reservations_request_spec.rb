require 'rails_helper'
require 'factory_bot'

RSpec.describe 'V1::Reservations', type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
    post '/login', params: { user: { username: @user.username, email: @user.email, password: @user.password } },
                   as: :json
    @authorization = response.header['Authorization']
    @yacht = FactoryBot.create(:yacht)
  end

  describe 'GET /v1/reservations' do
    it 'returns all reservations' do
      get '/v1/reservations', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /v1/reservations/:id' do
    it 'returns a reservation' do
      get '/v1/reservations/1', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end
end

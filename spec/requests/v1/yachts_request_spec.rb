require 'rails_helper'

RSpec.describe 'V1::Yachts', type: :request do
  before :each do
    @user = FactoryBot.create(:user)
    post '/login', params: { user: { username: @user.username, role: 'admin', email: @user.email, password: @user.password } }, as: :json
    @authorization = response.header['Authorization']
    @yacht = FactoryBot.create_list(:yacht, 30)
  end
  describe 'GET /v1/yachts' do
    it 'return unauthorized if user not logged in' do
      get '/v1/yachts'
      expect(response).to have_http_status(:unauthorized)
    end

    it 'returns a list of yachts if user is logged in' do
      get '/v1/yachts', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /v1/yachts/:id' do
    it 'returns a yacht if user is logged in' do
      get '/v1/yachts/1', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /v1/yachts' do
    it 'creates a yacht if user is logged in' do
      post '/v1/yachts',
           params: { yacht: { name: 'The Tub', description: 'No too shabby', price: '100', user_id: @user.id } },
           headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'DELETE /v1/yachts/:id' do
    it 'deletes a yacht if user is logged in' do
      delete '/v1/yachts/1', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end
end

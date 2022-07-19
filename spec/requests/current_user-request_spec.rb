require 'rails_helper'

RSpec.describe CurrentUserController, type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
    post '/login',
         params: { user: { username: @user.username, role: @user.role, email: @user.email, password: @user.password } }, as: :json
    @authorization = response.header['Authorization']
  end
  describe 'GET /current_user' do
    it 'returns the current user' do
      get '/current_user', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end

    it 'returns an error if the user is not logged in' do
      get '/current_user'
      expect(response).to have_http_status(:unauthorized)
    end
  end
end

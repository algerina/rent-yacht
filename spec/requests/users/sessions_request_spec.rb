require 'rails_helper'

RSpec.describe Users::SessionsController, type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
  end
  describe 'POST /login' do
    it 'logs in a user' do
      post '/login',
           params: { user: { username: @user.username, role: @user.role, email: @user.email,
                             password: @user.password } }, as: :json
      expect(response).to have_http_status(:ok)
    end

    it 'returns an error if the user is not found or has bad credentials' do
      post '/login',
           params: { user: { username: @user.username, role: @user.role, email: @user.email, password: '000' } }
      expect(response).to have_http_status(:unauthorized)
    end
  end
end

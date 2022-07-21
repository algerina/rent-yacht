require 'swagger_helper'

describe 'Registrations API' do
  path '/signup' do
    post 'Sign up to recieve a bearer token' do
      tags 'Registration'
      consumes 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              username: { type: :string, example: 'user1' },
              password: { type: :string, example: '123456' }
            }
          }
        },
        required: ['user', 'username', 'email', 'password']
      }

      response '200', 'User created' do
        let(:user){{user:{username: 'german', email: 'gc@gmail.com', password: '012345'}}}
        run_test!
      end
    end
  end
  path '/login' do
    post 'Login to recieve a bearer token' do
      tags 'Registration'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              username: { type: :string, example: 'user1' },
              password: { type: :string, example: '123456' }
            }
          }
        }
      }

      response '200', 'Log in successful' do
        let(:user){{user:{username: 'UserUser', password: 'password'}}}
        run_test!
      end
    end
  end
end

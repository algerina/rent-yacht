# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.configure do |config|
  # Specify a root folder where Swagger JSON files are generated
  # NOTE: If you're using the rswag-api to serve API descriptions, you'll need
  # to ensure that it's configured to serve Swagger from the same folder
  config.swagger_root = Rails.root.join('swagger').to_s

  # Define one or more Swagger documents and provide global metadata for each one
  # When you run the 'rswag:specs:swaggerize' rake task, the complete Swagger will
  # be generated at the provided relative path under swagger_root
  # By default, the operations defined in spec files are added to the first
  # document below. You can override this behavior by adding a swagger_doc tag to the
  # the root example_group in your specs, e.g. describe '...', swagger_doc: 'v2/swagger.json'
  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      paths: {},
      definitions: {
        Reservation: {
          type: 'object',
          properties: {
            id: { type: :integer, example: 1 },
            start_date: { type: :datetime, example: '2020-01-01' },
            days_number: { type: :integer, example: 5 },
            cost: { type: :decimal, example: 500.0 },
            yacht_id: { type: :integer, example: 1 },
            user_id: { type: :integer, example: 1 }
          }
        },
        Yacht: {
          type: 'object',
          properties: {
            id: { type: :integer, example: 1 },
            name: { type: :string, example: 'Yacht 1' },
            description: { type: :string, example: 'This is our first yacht' },
            price: { type: :decimal, example: 100.0 },
            image_url: { type: :string, example: 'http://localhost:3001/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--208a837d96cfc8b12c86088b4e4e0d0871fa6dce/yacht1.jpg' }
          }
        },
        User: {
          type: 'object',
          properties: {
            username: { type: :string, example: 'user1' },
            email: { type: :string, example: 'hola@hola.com' },
            password: { type: :string, example: '123456' }
          }
        },
        ErrorResponse: {
          type: 'object',
          properties: {
            messages: {
              type: :object,
              items: { type: :string, example: 'Error message' }
            }
          }
        }
      },
      servers: [
        {
          url: 'http://{defaultHost}',
          variables: {
            defaultHost: {
              default: 'localhost:3001'
            }
          }
        }
      ],
      components: {
        securitySchemes: {
          bearerAuth: {
            type: :http,
            scheme: :bearer,
            bearerFormat: JWT
          }
        }
      }
    }
  }
  config.swagger_format = :yaml
end

# rubocop:enable Metrics/BlockLength

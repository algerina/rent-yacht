require 'swagger_helper'

describe 'reservation API' do
  path '/v1/reservations' do
    get 'Returns all reservations' do
      tags 'Reservations'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'List of Reservations' do
        let(:Authorization) { "Bearer #{token}" }
        schema type: :array,
               reservations: {
                 type: :object,
                 items: { '$ref' => '#/definitions/Reservation' }
               }
        run_test!
      end
    end
  end
  path '/v1/reservations/{id}' do
    get 'Returns a reservation' do
      tags 'Reservations'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      parameter name: :id, in: :path, type: :string

      response '200', 'Reservation information' do
        let(:Authorization) { "Bearer #{token}" }
        schema type: :object,
               items: { '$ref' => '#/definitions/Reservation' }
        run_test!
      end

      response '404', 'Reservation not found' do
        schema '$ref' => '#/definitions/ErrorResponse'
        run_test!
      end
    end
  end
  path '/v1/reservations' do
    post 'Create a new Reservation' do
      tags 'Reservations'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      let(:Authorization) { "Bearer #{token}" }

      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          city: { type: :string, example: 'Example city' },
          start_date: { type: :datetime, example: '2022-10-29' },
          days_number: { type: :integer, example: 3 },
          yacht_id: { type: :string, example: '1' }
        }
      }

      response :created, 'Reservation created' do
        schema type: :object,
               items: { '$ref' => '#/definitions/Reservation' }
        run_test!
      end
    end
  end
  path '/v1/reservations/{id}' do
    delete 'Delete a reservation' do
      tags 'Reservations'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      parameter name: :id, in: :path, type: :string

      response '200', 'Reservation deleted' do
        let(:Authorization) { "Bearer #{token}" }
        run_test!
      end

      response '404', 'Reservation not found' do
        schema '$ref' => '#/definitions/ErrorResponse'
        run_test!
      end
    end
  end
end

require 'swagger_helper'

describe 'Yacht API' do
    path '/v1/yachts' do
        get 'Returns all yachts' do
            tags 'Yachts'
            security [ bearerAuth: []]
            consumes 'application/json'
            produces 'application/json'

            response '200', 'List of Yachts' do
                let(:Authorization) { "Bearer #{token}" }
                schema type: :array, 
                    yachts: {
                        type: :object,
                        items: {'$ref' => '#/definitions/Yacht'}
                    }
                run_test!
            end
        end
    end
    path '/v1/yachts/{id}' do
        get 'Returns a yacht' do
            tags 'Yachts'
            security [ bearerAuth: []]
            consumes 'application/json'
            produces 'application/json'

            parameter name: :id, in: :path, type: :string

            response '200', 'Yacht information' do
                let(:Authorization) { "Bearer #{token}" }
                schema type: :object,
                    items: {'$ref' => '#/definitions/Yacht'}
                run_test!
            end

            response '404', 'Yacht not found' do
                schema '$ref' => '#/definitions/ErrorResponse'
                run_test!
            end
        end
    end
    path '/v1/yachts' do
        post 'Create a new Yacht [Admin user only]' do
            tags 'Yachts'
            security [ bearerAuth: []]
            consumes 'application/json'
            produces 'application/json'

            let(:Authorization) { "Bearer #{token}" }

            parameter name: :yacht, in: :body, schema: {
                type: :object,
                properties: {
                    name: { type: :string, example: 'Example yacht' },
                    description: { type: :string, example: 'Example description' },
                    price: { type: :decimal, example: 100.0 },
                },
            }

            response :created, 'Yacht created' do
                schema type: :object,
                    items: {'$ref' => '#/definitions/Yacht'}
                run_test!
            end
        end
    end
    path '/v1/yachts/{id}' do
        delete 'Delete a yacht [Admin user only]' do
            tags 'Yachts'
            security [ bearerAuth: []]
            consumes 'application/json'
            produces 'application/json'

            parameter name: :id, in: :path, type: :string

            response '204', 'Yacht deleted' do
                let(:Authorization) { "Bearer #{token}" }
                run_test!
            end

            response '404', 'Yacht not found' do
                schema '$ref' => '#/definitions/ErrorResponse'
                run_test!
            end
        end
    end
end
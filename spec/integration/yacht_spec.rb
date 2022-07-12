require 'swagger_helper'

describe 'Yacht API' do
    path '/v1/yachts' do
        get 'Returns all yachts' do
            tags 'Yachts'
            consumes 'application/json'
            produces 'application/json'

            response '200', 'List of Yachts' do
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
            consumes 'application/json'
            produces 'application/json'

            parameter name: :id, in: :path, type: :string

            response '200', 'Yacht information' do
                schema type: :object,
                    items: {'$ref' => '#/definitions/Yacht'}
                run_test!
            end
        end
    end
end
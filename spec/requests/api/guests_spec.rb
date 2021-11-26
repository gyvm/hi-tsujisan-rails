require 'swagger_helper'

RSpec.describe 'api/guests', type: :request do
end

describe 'Guests API', type: :request do

  path '/api/v1/guests/{id}' do
    post 'Creates an guest' do
      tags 'Guests'
      operationId 'CreateGuest'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :guest, in: :body, schema: {
        oneOf: [
          { '$ref' => '#/components/schemas/CreateGuestRequest' },
        ]
      }

      response '200', 'guest created' do
        schema oneOf: [{ '$ref' => '#/components/schemas/CreateGuestResponse' }]
        run_test!
      end
    end
  end
end
require 'swagger_helper'

describe 'Events API', type: :request do
  path '/api/v1/events/{id}' do
    post 'Creates an event' do
      tags 'Events'
      operationId 'CreateEvent'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :event, in: :body, schema: {
        oneOf: [
          { '$ref' => '#/components/schemas/CreateEventRequest' }
        ]
      }

      response '200', 'event created' do
        schema oneOf: [{ '$ref' => '#/components/schemas/CreateEventResponse' }]
        run_test!
      end
    end
  end

  path '/api/v1/events/{id}' do
    get 'Retrieves an event' do
      operationId 'GetEvent'
      tags 'Events'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      response '200', 'events found' do
        schema '$ref' => '#/components/schemas/GetEventResponse'
        run_test!
      end
    end
  end
end

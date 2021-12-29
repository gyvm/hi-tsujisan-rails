require 'swagger_helper'

describe 'Events API', type: :request do

  path '/api/v1/events/{id}' do
    get 'Retrieves an event' do
      operationId 'GetEvent'
      tags 'Events'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      response '200', 'event found' do
        schema type: :object,
          properties: {
            data: {
              id: { type: :string },
              name: { type: :string },
              description: { type: :text }
            }
          },
          required: [ 'data' ]
        
        before do
          event_id = (FactoryBot.create(:event, name: 'bar')).id
          url = FactoryBot.create(:url, event_id: event_id, url: 'testurl')
        end
        let(:id) { 'testurl' }
        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data['data']['name']).to eq('bar')
        end
      end

      response '404', 'event not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  # TODO: 要確認
  path '/api/v1/events' do
    post 'Creates an event' do
      tags 'Events'
      operationId 'CreateEvent'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :event, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          possible_dates: { type: :array, items: { type: 'string' } }
        }
      },
      required: [ 'name', 'possible_dates']

      # response '201', 'event created' do
      #   let(:event) { { name: 'foo', description: '' } }
      #   run_test!
      # end

      response '500', 'invalid request' do
        let(:event) { { name: 'foo', possible_dates: [] } }
        run_test!
      end

      response '500', 'invalid request' do
        let(:event) { {name: '', possible_dates: ['2021-09-10', '2021-09-11', '2021-09-12', '2021-09-13'] } }
        run_test!
      end
    end
  end
end

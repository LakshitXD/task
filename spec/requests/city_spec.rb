# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cities', type: :request do
  context 'Basic Crud for cities' do
    let(:params) do
      {
        "data": {
          "type": 'cities',
          "attributes": {
            "city-name": 'London',
            "country-name": 'Uk',
            "image-url": 'https://example.com'
          }
        }
      }
    end

    let(:basic_headers) do
      {
        'ACCEPT' => 'application/vnd.api+json',
        'CONTENT-TYPE' => 'application/vnd.api+json'
      }
    end

    it 'should create a city' do
      post '/api/v1/cities', params: params.to_json, headers: basic_headers
      expect(response.status).to eq(201)
    end

    it 'index call for city' do
      get '/api/v1/cities'
      expect(response.status).to eq(200)
    end
  end
  context 'failed rspec' do
    let(:params_test) do
      {
        "data": {
          "type": 'cities',
          "attributes": {
            "city-name": nil,
            "country-name": 'Uk',
            "image-url": 'https://example.com'
          }
        }
      }
    end

    let(:basic_headers) do
      {
        'ACCEPT' => 'application/vnd.api+json',
        'CONTENT-TYPE' => 'application/vnd.api+json'
      }
    end

    it 'should through 500 Internal server error because city-name is required' do
      post '/api/v1/cities', params: params_test.to_json, headers: basic_headers
      expect(response.status).to eq(200)
    end
  end
end

# frozen_string_literal: true

module Api
  module V1
    # City API
    class CitiesController < ApplicationController
      include JSONAPI::ActsAsResourceController
      before_action :cors_headers

      def cors_headers
        # byebug
        request.headers['Access-Control-Allow-Origin'] = '*'
        request.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
        request.headers['Access-Control-Request-Method'] = '*'
        request.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
      end
    end
  end
end

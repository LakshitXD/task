# frozen_string_literal: true

module Api
  module V1
    class CityResource < JSONAPI::Resource
      attributes :city_name, :country_name, :image_url
    end
  end
end

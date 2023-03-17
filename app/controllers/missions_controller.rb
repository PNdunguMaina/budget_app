class MissionsController < ApplicationController
    require 'rest-client'

    def get_missions
        baseUrl = 'https://api.spacexdata.com/v3/missions'
        @response = RestClient.get(baseUrl)
        @res = JSON.parse(@response)

    end
end

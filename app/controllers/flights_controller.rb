class FlightsController < ApplicationController
    def create 
        @flight = Flight.create(
            airplane_id: params[:airplane_id],
            passenger_id: params[:passenger_id]
        )
        render json: @flight
    end
end

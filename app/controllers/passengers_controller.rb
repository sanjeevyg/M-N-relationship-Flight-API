class PassengersController < ApplicationController
    def index 
        @passengers = Passenger.all 
        render json: @passengers, include: [:flights, :airplanes]
    end

    def show 
        @passenger = Passenger.find(params[:id])
        render json: @passenger, include: [:flights, :airplanes]
    end

    def create 
        @passenger = Passenger.create(
            name: params[:name]
        )
        render json: @passenger
    end

    def update 
        @passenger = Passenger.find(params[:id])
        @passenger.update(
            name: params[:name]
        )
        render json: "message #{@passenger.id}/'s name is updated to #{params[:name]}"
    end

    def destroy
        @passenger = Passenger.find(params[:id])
        @passenger.destroy
        render json: "message: #{@passenger.id} is destroyed."
    end
end

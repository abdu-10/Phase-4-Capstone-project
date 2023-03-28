class BikesController < ApplicationController
    # skip_before_action :authorize, only: [:create]

    # "/post" Creates a new instance of a Bike (Create)
    def create
        bike = Bike.create!(bike_params)
        render json: bike, status: :created
    end

    # '/bikes' Displays all bikes
    def index
        bikes = Bike.all
        render json: bikes
    end
    # '/bike/:id' displays a bike of id in params(Read by show in rails)
    def show
        bike = find_bike
        render json: bike
    end

    # '/bike/:id' edits an bike of id in params(Update)
    def update
        bike = find_bike
        bike.update!(bike_params)
        render json: bike
    end

    # '/bike/:id' deletes an bike of id in params(Delete by destroy)
    def destroy
        bike = find_bike
        bike.destroy
        head :no_content
    end

    private
    
    def find_bike
        Bike.find(params[:id])
    end

    def bike_params
        params.permit(:model, :cc, :location, :price, :owner_id, :image_url)
    end
end

class RiderBikesController < ApplicationController
    # "/post" Creates a new instance of a Bike relation (Create)
    def create
        rider_bike = RiderBike.create!(rider_bike_params)        
        render json: rider_bike, status: :created
    end

   
    
    # instance method to get all owner riders
    def rider_booked
        myriders =  RiderBike.where(owner_id: params[:owner_id])
        render json: myriders
    end

    # instance method to get all rider bikes
    def bike_booked
        riderBikes =  RiderBike.where(rider_id: params[:rider_id])
        render json: riderBikes
    end


    def update
        rider_bike = find_rider_bike
        rider_bike.update!(rider_bike_params)
        render json: rider_bike
    end

    private
    
    def find_rider_bike
        RiderBike.find(params[:id])
    end

    def rider_bike_params
        params.permit(:rider_id, :bike_id, :owner_id)
    end
end

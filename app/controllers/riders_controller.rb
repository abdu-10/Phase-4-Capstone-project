class RidersController < ApplicationController
    skip_before_action :authorize, only: [:create]

    # "/post" Creates a new instance of an Rider (Create)
    def create
        rider = Rider.create!(rider_params)
        render json: rider, status: :created
    end

    # '/rider/:id' displays an rider of id in params(Read by show in rails)
    def show
        rider = find_rider
        render json: rider
    end

    def show_me
        user = Rider.find_by(id: session[:user_id])
        render json: user
    end

    # '/rider/:id' edits an rider of id in params(Update)
    def update
        rider = find_rider
        rider.update!(rider_params)
        render json: rider
    end

    # '/rider/:id' deletes an rider of id in params(Delete by destroy)
    def destroy
        rider = find_rider
        rider.destroy
        head :no_content
    end

    private
    
    def find_rider
        Rider.find(params[:id])
    end

    def rider_params
        params.permit(:full_name, :username, :password, :phone_number, :id_number, :spouse_contact, :date_of_birth, :licence_number, :email)
    end
end

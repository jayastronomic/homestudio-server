module Api
    module V1
        class ReservationsController < ApplicationController

            def create
                reservation = Reservation.new(reservation_params)
                if reservation.save 
                    render json: { status: "COMPLETED", message: "Reservation created", data: reservation }
                else
                    render json: { status: "INCOMPLETE", errors: "reservation not made"}
                end
            end
            

            private 

            def reservation_params
                params.permit(
                    :start_time,
                    :end_time,
                    :user_id,
                    :studio_id
                )
            end
        end
    end
end
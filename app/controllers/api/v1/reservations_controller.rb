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

            def index
                @user = User.find(params[:user_id]) 
                if authorized_user?
                    @reservations = @user.reservations
                    if @reservations
                        render json: @reservations
                    else
                        render json: {status: "INCOMPLETE", errors: "Reservations Not Found"}
                    end
                end
            end

            def destroy
                reservation = Reservation.find(params[:id])
                
                if reservation.destroy
                    render json: {status: "COMPLETED", data: reservation}
                else
                    render json: {status: "INCOMPLETE"}
                end
            end

            

            private 

            def reservation_params
                params.require(:reservation).permit(
                    :start_time,
                    :end_time,
                    :user_id,
                    :studio_id
                )
            end

            # def find_user
            #     current_user
            # end

        end
    end
end
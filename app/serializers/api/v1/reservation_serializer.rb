module Api
  module V1
    class ReservationSerializer < ActiveModel::Serializer
          attributes :id, :start_time, :end_time
          belongs_to :studio
    end
  end
end


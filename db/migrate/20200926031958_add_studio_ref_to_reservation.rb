class AddStudioRefToReservation < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :studio_id, :uuid
  end
end

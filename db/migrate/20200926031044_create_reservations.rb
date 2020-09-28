class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations, id: :uuid do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.bigint :reservation_number
      

      t.timestamps
    end
  end
end

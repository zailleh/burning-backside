class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.bigint :flight_id
      t.bigint :user_id
      t.text :seat_number

      t.index [:flight_id, :user_id]
      t.timestamps
    end
  end
end

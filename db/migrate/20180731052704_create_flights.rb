class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.bigint :plane_id
      t.string :flight_number
      t.string :from
      t.string :to
      t.datetime :depart_dt
      t.timestamps
    end
  end
end

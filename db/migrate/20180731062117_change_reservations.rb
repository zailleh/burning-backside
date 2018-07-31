class ChangeReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :seat_number, :text
    add_column :reservations, :seat_row, :integer
    add_column :reservations, :seat_column, :integer
  end
end

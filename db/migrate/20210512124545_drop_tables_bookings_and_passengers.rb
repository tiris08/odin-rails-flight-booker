class DropTablesBookingsAndPassengers < ActiveRecord::Migration[6.1]
  def change
    drop_table :bookings
    drop_table :passengers
  end
end

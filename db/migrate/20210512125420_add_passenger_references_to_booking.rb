class AddPassengerReferencesToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :passengers_attributes, foreign_key: { to_table: :passengers }
  end
end

class RemoveDaysFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :days, :string
  end
end

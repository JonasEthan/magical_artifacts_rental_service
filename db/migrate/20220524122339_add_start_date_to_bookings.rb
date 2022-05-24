class AddStartDateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_date, :date
  end
end

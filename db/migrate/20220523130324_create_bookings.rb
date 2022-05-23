class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :artifact, null: false, foreign_key: true
      t.integer :days

      t.timestamps
    end
  end
end

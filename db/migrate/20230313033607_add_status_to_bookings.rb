class AddStatusToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :status, :string, null: false, default: "pending"
  end
end

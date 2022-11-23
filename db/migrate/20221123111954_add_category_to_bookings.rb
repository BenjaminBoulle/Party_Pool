class AddCategoryToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :category, :string
  end
end

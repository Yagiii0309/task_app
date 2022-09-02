class AddColumnsToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :room_img, :string
    add_column :reservations, :room_name, :string
    add_column :reservations, :room_introduction, :string
  end
end

class RenameRoomsFeeColumnToReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :rooms_fee, :room_fee
  end
end
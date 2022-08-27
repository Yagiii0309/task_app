class ChangeUsersToRooms < ActiveRecord::Migration[7.0]
  def change
    rename_table :users, :rooms
  end
end

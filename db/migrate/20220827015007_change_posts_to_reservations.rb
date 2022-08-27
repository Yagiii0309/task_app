class ChangePostsToReservations < ActiveRecord::Migration[7.0]
  def change
    rename_table :posts, :reservations
  end
end

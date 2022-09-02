class RenameAmountFeeColumnToReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :amount_fee, :rooms_fee
  end
end

class AddColumnsToResetvations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :amount_fee, :string
  end
end

class AddPeopleToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :people, :integer
  end
end

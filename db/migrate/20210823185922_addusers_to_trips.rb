class AddusersToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :user_id, :integer, null: false
    add_column :trips,  :name, :string
    add_index (:trips), [:user_id], unique: true
  end
end

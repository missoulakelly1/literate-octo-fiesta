class AddBelongsToTrips < ActiveRecord::Migration[6.1]
  def change
    add_reference(:stops, :trip, null: false, foreign_key: true)
  end
end

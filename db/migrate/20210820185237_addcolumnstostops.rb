class Addcolumnstostops < ActiveRecord::Migration[6.1]
  def change
    add_column(:stops, :position, :integer)
    add_column(:stops, :address, :string)
    add_column(:stops, :latitude, :decimal, precision: 10, scale: 6 )
    add_column(:stops, :longitude, :decimal, precision: 10, scale: 6 )
    add_column(:stops, :arrival_date, :date )
   
  end
end

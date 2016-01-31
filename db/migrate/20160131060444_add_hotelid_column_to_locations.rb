class AddHotelidColumnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :hotelid, :string
  end
end

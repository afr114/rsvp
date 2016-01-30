class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :guest_id
      t.integer :event_id
      t.date :start_date
      t.date :end_date
      t.string :name
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip, :string
      t.column :latitude, :float
      t.column :longitude, :float

      t.timestamps null: false
    end
  end
end

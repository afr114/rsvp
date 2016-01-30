class AddRoomTable < ActiveRecord::Migration
  def change
    remove_column :locations, :guest_id
    remove_column :locations, :start_date
    remove_column :locations, :end_date

    create_table :rooms do |t|
      t.belongs_to :guest_id, index: true
      t.belongs_to :location_id, index: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :room_numver
      t.timestamps null: false
    end
  end
end

class Roomnumber < ActiveRecord::Migration
  def change
    change_table(:rooms) do |t|
      t.remove :guest_id_id
      t.remove :location_id_id
      t.remove :room_numver
      t.belongs_to :guest, index: true
      t.belongs_to :location, index: true
      t.integer :room_number
    end
  end
end

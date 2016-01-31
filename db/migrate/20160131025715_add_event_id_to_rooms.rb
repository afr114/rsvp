class AddEventIdToRooms < ActiveRecord::Migration
  def change
    change_table :rooms do |t|
      t.belongs_to :event, index: true
    end
  end
end

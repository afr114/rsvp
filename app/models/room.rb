class Room < ActiveRecord::Base
  belongs_to :guest
  belongs_to :location
  belongs_to :event

  validates :start_date, presence: true
  validates :end_date, presence: true
end

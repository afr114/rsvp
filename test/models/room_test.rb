require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  should belong_to :guest
  should belong_to :location
  should belong_to :event

  should validate_presence_of :end_date
  should validate_presence_of :start_date
end

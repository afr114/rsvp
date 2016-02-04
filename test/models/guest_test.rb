require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  should belong_to :user
  should belong_to :event

  should have_many :rooms
  should have_many :locations
end

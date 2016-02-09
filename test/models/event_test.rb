require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_many :guests
  should have_many :locations
  should have_many :rooms

  should belong_to :user
end

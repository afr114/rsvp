require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should belong_to :event
  should have_many :rooms
  should have_many :guests

  should validate_presence_of :name
  should validate_presence_of :street
  should validate_presence_of :city
  should validate_presence_of :state

  should 'return full address' do
    location = locations(:standard)
    assert_equal(location.full_address, '1022 SW Stark St, Portland, OR')
  end
end

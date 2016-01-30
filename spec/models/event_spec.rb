require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should have_many(:guests) }
  it { should belong_to(:user) }
end

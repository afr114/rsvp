require 'rails_helper'

RSpec.describe Guest, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:event) }
end

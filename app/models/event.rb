class Event < ActiveRecord::Base
  has_many :guests
  has_many :locations
  belongs_to :user
end

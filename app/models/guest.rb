class Guest < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  has_many :rooms
  has_many :locations, through: :rooms
  
end

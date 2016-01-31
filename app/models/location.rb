class Location < ActiveRecord::Base


  attr_accessor :full_address
  belongs_to :event
  has_many :rooms
  has_many :guests, through: :rooms

  geocoded_by :full_address
  after_validation :geocode

  validates :name, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true

  def full_address
    "#{street}, #{city}, #{state} #{zip}"
  end
end

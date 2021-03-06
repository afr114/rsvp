class Location < ActiveRecord::Base
  before_create :get_id


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


  def full_address
    "#{street}, #{city}, #{state} "
  end

  def get_id
    self.city = self.city.strip()
    self.state = self.state.strip()
    query = self.name.split(' ').join('-') + "-" + self.city + '-' + self.state
    response = HTTParty.get("http://terminal2.expedia.com/x/nlp/results?q=" + query + "&apikey=" + "3FD8jYfm0LbZsxOcVZ66f89vByNPKXQB")
    self.hotelid = response["result"]["hotels"].first()["id"]
  end
end

class Event < ActiveRecord::Base

  has_attached_file :photo, styles: {large: "800x800>", medium: "300x200#", thumb: "100x100#" }, default_url: "/assets/images/missing.jpg"

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/


  has_many :guests
  has_many :locations
  has_many :rooms
  belongs_to :user


  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  validates :start_date, :presence => true
  validates :end_date, :presence => true

  def find_guest(user)
    event_id = self.id
    return Guest.where(user_id: user.id, event_id: event_id)
  end

  def get_hotel_info(location)
    return  HTTParty.get("http://terminal2.expedia.com/x/hotels?hotelids=" + location.hotelid + "&dates=" + self.start_date.strftime("%Y-%m-%d") + "," + self.end_date.strftime("%Y-%m-%d") + "&apikey=" + "3FD8jYfm0LbZsxOcVZ66f89vByNPKXQB")

  end

end

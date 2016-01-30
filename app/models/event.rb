class Event < ActiveRecord::Base

  has_attached_file :photo, styles: {large: "800x800>", medium: "300x200#", thumb: "100x100#" }, default_url: "/assets/images/missing.jpg"

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/


  has_many :guests
  has_many :locations
  belongs_to :user


  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end

class Photo < ActiveRecord::Base
  has_attached_file :image, styles: {thumb: "x300>", sm_thumb: "x200>", sm_square: "100x100>", square: "300x300>"}
  attr_accessor :image_file_name
  attr_accessor :image_content_type
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  belongs_to :gallery
end

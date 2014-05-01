class Photo < ActiveRecord::Base
  has_attached_file :image, styles: {thumb: "x300>", sm_thumb: "x200>", sm_square: "100x100>", square: "300x300>"}
  belongs_to :gallery
end

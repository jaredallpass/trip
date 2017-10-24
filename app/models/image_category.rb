class ImageCategory < ApplicationRecord
  has_many :image_sub_categories
  has_many :uploads
  belongs_to :image
end

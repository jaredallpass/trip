class ImageSubCategory < ApplicationRecord
  has_many :uploads
  belongs_to :image_category
end

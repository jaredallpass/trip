class Image < ApplicationRecord
  has_many :image_categories
  has_many :image_sub_categories, through: :image_categories
  has_many :uploads
end

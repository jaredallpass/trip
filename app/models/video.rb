class Video < ApplicationRecord
  has_many :video_categories
  has_many :video_sub_categories, through: :video_categories
  has_many :uploads
end

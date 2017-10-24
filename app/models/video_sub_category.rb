class VideoSubCategory < ApplicationRecord\
  has_many :uploads
  belongs_to :video_category
end

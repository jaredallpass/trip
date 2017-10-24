class VideoCategory < ApplicationRecord
    has_many :video_sub_categories
    belongs_to :video
    has_many :uploads
end

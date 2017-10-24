class MusicSubCategory < ApplicationRecord
  belongs_to :music_category
  has_many :uploads
end

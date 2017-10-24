class MusicCategory < ApplicationRecord
  has_many :music_sub_categories
  belongs_to :music
  has_many :uploads
end

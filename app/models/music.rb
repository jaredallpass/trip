class Music < ApplicationRecord
  has_many :music_categories
  has_many :music_sub_categories, through: :music_categories
  has_many :uploads
end

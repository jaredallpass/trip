class Video < ApplicationRecord
  	scope :music_videos, -> { where(category: 'Music Videos') }
   	scope :funny_shit, -> { where(category: 'Funny Shit') }
	scope :mother_nature, -> { where(category: 'Mother Nature') }
	scope :eye_candy, -> { where(category: 'Eye Candy') }
end

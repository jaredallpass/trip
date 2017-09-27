class VideoCategory < ApplicationRecord
	has_many :videos

def to_s
self.name
end

end

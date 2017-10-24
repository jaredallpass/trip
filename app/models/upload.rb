class Upload < ApplicationRecord
  mount_uploader :content, ContentUploader

end

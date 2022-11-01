class Music < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioFileUploader

  belongs_to :users, optional: true
end

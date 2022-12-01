class Music < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :music_file

  def audio_url
    music_file.attached? ? url_for(music_file) : nil
  end

  belongs_to :users, optional: true
  scope :active_music, -> {where(:active => true)}
end

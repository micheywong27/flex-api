class Post < ApplicationRecord
    include Rails.application.routes.url_helpers
    belongs_to :user
    has_many :favorites
    has_many :claps
    has_many :comments
    has_one_attached :media

    def media_url
        rails_blob_path(self.media, only_path: true) if self.media.attached?
    end
end
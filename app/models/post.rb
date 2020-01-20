class Post < ApplicationRecord
    validates :content, presence: true
    belongs_to :user
    has_many :favorites
    has_many :claps
end
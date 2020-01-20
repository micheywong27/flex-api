class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    has_many :posts 
    has_many :favorites
    has_many :claps
end

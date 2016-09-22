class User < ActiveRecord::Base
	validates :login, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 225 },
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }

	validates :email, uniqueness: true
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	has_many :playlists
  	has_many :movies, through: :playlists

end

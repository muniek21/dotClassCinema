class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
wdwadadwdad
wddadawdwadwa
dwdwad
wa
wd
wada
	validatedwadawddadwadwas :email, presence: true, length: { maximum: 225 },
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }

	validates :email, uniqueness: true
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	has_many :playlists
  	has_many :movies, through: :playlists

end

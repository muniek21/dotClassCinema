class User < ActiveRecord::Base
	validates :login, :email, :password, :confirm_password, presence: true, on: :create
	validates :email, uniqueness: true

end

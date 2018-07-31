class User < ApplicationRecord
	validates :username, uniqueness: true, presence: true
	validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end

class Admin < ApplicationRecord
	validates :user, uniqueness: true
	validates :user, :password, presence: true, allow_blank: false
end

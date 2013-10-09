class Account < ActiveRecord::Base
	validates :bankName, presence: true
	validates :accountType, presence: true
	validates :accountBalance, presence: true
end

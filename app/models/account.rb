# == Schema Information
#
# Table name: accounts
#
#  id             :integer          not null, primary key
#  bankName       :string(255)
#  accountType    :string(255)
#  accountBalance :float
#  created_at     :datetime
#  updated_at     :datetime
#

class Account < ActiveRecord::Base
	validates :bankName, presence: true
	validates :accountType, presence: true
	validates :accountBalance, presence: true
	belongs_to :currency
end

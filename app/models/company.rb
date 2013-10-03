# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  registeredName    :string(255)
#  registeredAddress :string(255)
#  vatNumber         :string(255)
#  email             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Company < ActiveRecord::Base
	validates :registeredName, presence: true, uniqueness: true
	validates :registeredAddress, presence: true
	validates :vatNumber, presence: true, length: { maximum:10 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL_REGEX }
end

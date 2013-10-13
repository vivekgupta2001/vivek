# == Schema Information
#
# Table name: currencies
#
#  id         :integer          not null, primary key
#  longName   :string(255)
#  shortName  :string(255)
#  string     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Currency < ActiveRecord::Base
	validates :longName, presence: true
	validates :shortName, presence: true
end

class Currency < ActiveRecord::Base
	validates :longName, presence: true
	validates :shortName, presence: true
end

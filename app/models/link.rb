class Link < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :url, :format => URI::regexp(%w(http https))
end

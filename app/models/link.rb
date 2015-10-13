class Link < ActiveRecord::Base
  validates :title, :presence => true
  validates :url, :presence => true
  validates :votes, :presence => true
end

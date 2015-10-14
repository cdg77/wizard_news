class Comment < ActiveRecord::Base
  belongs_to :link

  validates :author, :presence => true
  validates :body, :presence => true
end

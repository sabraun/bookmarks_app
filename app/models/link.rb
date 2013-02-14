class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name
  validates :content, :length => {:minimum => 2 :maximum => 20 }
end

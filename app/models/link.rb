class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name
  validates :name, :length => {:maximum => 10, :mimimum => 2}
  validates :URL, :length => {:minimum => 3}
end

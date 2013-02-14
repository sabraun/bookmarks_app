class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name
  validates :name, :length => {:mimimum => 2, :maximum => 11}
  validates :URL, :length => {:minimum => 3}
end

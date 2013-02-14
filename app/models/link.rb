class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name

  validates :name, :length => {:maximum => 8, :minimum => 2}
  validates :UR, :length => {:minimum => 3}


end

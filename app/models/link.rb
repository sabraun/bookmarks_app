class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name

  validates :name, :length => {:maximum => 20, :minimum => 2}
  validates :URL, :length => {:minimum => 4}

end

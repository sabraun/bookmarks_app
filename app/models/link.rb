class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name

  validates :name, :length => {:maximum => 8}

end

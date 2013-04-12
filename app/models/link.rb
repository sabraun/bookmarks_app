class Link < ActiveRecord::Base
  attr_accessible :URL, :dateSaved, :name
  
  belongs_to :user
    

  validates :name, :length => {:maximum => 20, :minimum => 2}
  validates :URL, :length => {:minimum => 4}

  default_scope order: 'links.created_at DESC'
    
end

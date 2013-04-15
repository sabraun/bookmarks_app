class User < ActiveRecord::Base
    attr_accessible :name, :realName, :email, :password, :password_confirmation
    has_secure_password
    has_many :links, dependent: :destroy

    before_save :create_remember_token
    
    
  validates :name, presence: true, uniqueness: true
  validates :realName, :length => {:maximum => 75, :minimum => 2}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, :length => {:maximum => 40, :minimum => 7}
  validates :password_confirmation, presence: true
  

  
  
    private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
    
    
end

require 'spec_helper'

describe User do

  before do
      @user = User.new(name: "Example User", email: "user@example.com", realName: "John Smith",
                     password: "foobarx", password_confirmation: "foobarx")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:realName) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }


    it { should be_valid }

   
  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end
   
  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
   
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end      
    end
  end
   
    
  describe "when name is already taken" do
    before do
        user_with_same_name = @user.dup
        user_with_same_name.save
    end

    it { should_not be_valid }
  end
  
  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when password confirmation is nil" do
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end
  
  
  
  describe "link associations" do

    before { @user.save }
    let!(:older_link) do 
        FactoryGirl.create(:link, user: @user, created_at: 1.day.ago)
    end
    let!(:newer_link) do
        FactoryGirl.create(:link, user: @user, created_at: 1.hour.ago)
    end

    it "should have the right links in the right order" do
        @user.links.should == [newer_link, older_link]
    end
    
    
    it "should destroy associated links" do
        links = @user.links.dup
      @user.destroy
      links.should_not be_empty
      links.each do |link|
          Link.find_by_id(link.id).should be_nil
      end
    end
    
    
  end
  
  
  
  
  
end

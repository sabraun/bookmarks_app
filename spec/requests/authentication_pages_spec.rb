require 'spec_helper'


describe "Authentication" do

  subject { page }

  
  describe "authorization" do

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before { sign_in user }
      
      it { should have_link('Users',    href: users_path) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Settings', href: edit_user_path(user)) }
      it { should have_link('Sign out', href: signout_path) }

  # has error no method 'click_button'
      #click_button "Account"
      #click_button "Settings"
      
       #   fill_in "Name",      with: user.name
       #   fill_in "RealName",  with: user.realName
       #   fill_in "Email",     with: user.email
       #   fill_in "Password",  with: user.password
      #click_button "Save changes"
          
       #it { should have_selector('div', text: 'Profile updated') }
      
  
  
     end
    
    
    
    
  end
  
  
  
  
end


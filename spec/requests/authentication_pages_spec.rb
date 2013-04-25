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

      
     end
    
     
    describe "as non-admin user" do
      let(:user) { FactoryGirl.create(:user) }
      let(:non_admin) { FactoryGirl.create(:user) }

      before { sign_in non_admin }

      describe "submitting a DELETE request to the Users#destroy action" do
        before { delete user_path(user) }
        specify { response.should redirect_to(root_path) }        
      end
    end

     
     
     
    
  end
  

  
  
end


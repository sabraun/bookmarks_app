require 'spec_helper'

describe "Links" do
    
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get links_path
    #  response.status.should be(200)
    #end
    
    it "should have the h1 'links/new'" do
        visit '/links/new'
        page.should have_selector('h1', :text => 'New link')
    end        # test ok
    
    it "should have the h1 'links_form'" do
        visit '/links'
        page.should have_selector('h1', :text => 'Listing links')
    end        # test ok
    

    
end



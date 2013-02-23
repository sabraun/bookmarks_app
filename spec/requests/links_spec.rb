require 'spec_helper'

describe "Links" do
    
    it "should have the <h1> 'links/new'" do
        visit '/links/new'
        page.should have_selector('h1', :text => 'New link')
    end        # test ok
    
    
    it "should have the <h1> 'links_form'" do
        visit '/links'
        page.should have_selector('h1', :text => 'Listing links')
    end        # test ok
    
end



require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :URL => "MyString",
      :name => "MyString",
      :dateSaved => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_URL", :name => "link[URL]"
      assert_select "input#link_name", :name => "link[name]"
      assert_select "input#link_dateSaved", :name => "link[dateSaved]"
    end
  end
end

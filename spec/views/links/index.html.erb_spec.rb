require 'spec_helper'

describe "links/index" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :URL => "Url",
        :name => "Name",
        :dateSaved => "Date Saved"
      ),
      stub_model(Link,
        :URL => "Url",
        :name => "Name",
        :dateSaved => "Date Saved"
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Date Saved".to_s, :count => 2
  end
end

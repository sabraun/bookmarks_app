require 'spec_helper'

describe "links/show" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :URL => "Url",
      :name => "Name",
      :dateSaved => "Date Saved"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Name/)
    rendered.should match(/Date Saved/)
  end
end

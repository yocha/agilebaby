require 'spec_helper'

describe "links/show" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :url => "Url",
      :title => "Title",
      :confirmed => false,
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Title/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end

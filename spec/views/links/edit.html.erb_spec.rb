require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :url => "MyString",
      :title => "MyString",
      :confirmed => false,
      :category_id => 1
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_url", :name => "link[url]"
      assert_select "input#link_title", :name => "link[title]"
      assert_select "input#link_confirmed", :name => "link[confirmed]"
      assert_select "input#link_category_id", :name => "link[category_id]"
    end
  end
end

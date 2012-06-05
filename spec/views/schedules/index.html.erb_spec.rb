require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule,
        :name => "Name",
        :age => 1,
        :data_type => "Data Type",
        :category_id => 2,
        :description => "MyText",
        :frequency => "Frequency",
        :required => false
      ),
      stub_model(Schedule,
        :name => "Name",
        :age => 1,
        :data_type => "Data Type",
        :category_id => 2,
        :description => "MyText",
        :frequency => "Frequency",
        :required => false
      )
    ])
  end

  it "renders a list of schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Data Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Frequency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

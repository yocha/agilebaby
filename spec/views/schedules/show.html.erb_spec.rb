require 'spec_helper'

describe "schedules/show" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :name => "Name",
      :age => 1,
      :data_type => "Data Type",
      :category_id => 2,
      :description => "MyText",
      :frequency => "Frequency",
      :required => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Data Type/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/Frequency/)
    rendered.should match(/false/)
  end
end

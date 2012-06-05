require 'spec_helper'

describe "schedules/new" do
  before(:each) do
    assign(:schedule, stub_model(Schedule,
      :name => "MyString",
      :age => 1,
      :data_type => "MyString",
      :category_id => 1,
      :description => "MyText",
      :frequency => "MyString",
      :required => false
    ).as_new_record)
  end

  it "renders new schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedules_path, :method => "post" do
      assert_select "input#schedule_name", :name => "schedule[name]"
      assert_select "input#schedule_age", :name => "schedule[age]"
      assert_select "input#schedule_data_type", :name => "schedule[data_type]"
      assert_select "input#schedule_category_id", :name => "schedule[category_id]"
      assert_select "textarea#schedule_description", :name => "schedule[description]"
      assert_select "input#schedule_frequency", :name => "schedule[frequency]"
      assert_select "input#schedule_required", :name => "schedule[required]"
    end
  end
end

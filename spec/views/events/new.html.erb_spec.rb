require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :task_id => 1,
      :duration => 1,
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_task_id", :name => "event[task_id]"
      assert_select "input#event_duration", :name => "event[duration]"
      assert_select "textarea#event_comment", :name => "event[comment]"
    end
  end
end

require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :task_id => 1,
      :duration => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_task_id", :name => "event[task_id]"
      assert_select "input#event_duration", :name => "event[duration]"
      assert_select "textarea#event_comment", :name => "event[comment]"
    end
  end
end

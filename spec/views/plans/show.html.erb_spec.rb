require 'spec_helper'

describe "plans/show.html.erb" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :name => "Name",
      :credit => 1,
      :ratio => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

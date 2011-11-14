require 'spec_helper'

describe "plans/edit.html.erb" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :name => "MyString",
      :credit => 1,
      :ratio => 1
    ))
  end

  it "renders the edit plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path(@plan), :method => "post" do
      assert_select "input#plan_name", :name => "plan[name]"
      assert_select "input#plan_credit", :name => "plan[credit]"
      assert_select "input#plan_ratio", :name => "plan[ratio]"
    end
  end
end

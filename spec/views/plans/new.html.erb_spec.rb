require 'spec_helper'

describe "plans/new.html.erb" do
  before(:each) do
    assign(:plan, stub_model(Plan,
      :name => "MyString",
      :credit => 1,
      :ratio => 1
    ).as_new_record)
  end

  it "renders new plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path, :method => "post" do
      assert_select "input#plan_name", :name => "plan[name]"
      assert_select "input#plan_credit", :name => "plan[credit]"
      assert_select "input#plan_ratio", :name => "plan[ratio]"
    end
  end
end

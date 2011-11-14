require 'spec_helper'

describe "vouchers/edit.html.erb" do
  before(:each) do
    @voucher = assign(:voucher, stub_model(Voucher,
      :client_id => 1,
      :plan_id => 1
    ))
  end

  it "renders the edit voucher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vouchers_path(@voucher), :method => "post" do
      assert_select "input#voucher_client_id", :name => "voucher[client_id]"
      assert_select "input#voucher_plan_id", :name => "voucher[plan_id]"
    end
  end
end

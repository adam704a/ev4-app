require 'spec_helper'

describe "vouchers/show.html.erb" do
  before(:each) do
    @voucher = assign(:voucher, stub_model(Voucher,
      :client_id => 1,
      :plan_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

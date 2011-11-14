require 'spec_helper'

describe "voucher_accounts/index.html.erb" do
  before(:each) do
    assign(:voucher_accounts, [
      stub_model(VoucherAccount,
        :name => "Name",
        :balence => 1,
        :currency => "Currency"
      ),
      stub_model(VoucherAccount,
        :name => "Name",
        :balence => 1,
        :currency => "Currency"
      )
    ])
  end

  it "renders a list of voucher_accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
  end
end

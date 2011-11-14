require 'spec_helper'

describe "voucher_accounts/show.html.erb" do
  before(:each) do
    @voucher_account = assign(:voucher_account, stub_model(VoucherAccount,
      :name => "Name",
      :balence => 1,
      :currency => "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Currency/)
  end
end

require 'spec_helper'

describe "voucher_accounts/edit.html.erb" do
  before(:each) do
    @voucher_account = assign(:voucher_account, stub_model(VoucherAccount,
      :name => "MyString",
      :balence => 1,
      :currency => "MyString"
    ))
  end

  it "renders the edit voucher_account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voucher_accounts_path(@voucher_account), :method => "post" do
      assert_select "input#voucher_account_name", :name => "voucher_account[name]"
      assert_select "input#voucher_account_balence", :name => "voucher_account[balence]"
      assert_select "input#voucher_account_currency", :name => "voucher_account[currency]"
    end
  end
end

require 'spec_helper'

describe "VoucherAccounts" do
  describe "GET /voucher_accounts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get voucher_accounts_path
      response.status.should be(200)
    end
  end
end

require "spec_helper"

describe VoucherAccountsController do
  describe "routing" do

    it "routes to #index" do
      get("/voucher_accounts").should route_to("voucher_accounts#index")
    end

    it "routes to #new" do
      get("/voucher_accounts/new").should route_to("voucher_accounts#new")
    end

    it "routes to #show" do
      get("/voucher_accounts/1").should route_to("voucher_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/voucher_accounts/1/edit").should route_to("voucher_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/voucher_accounts").should route_to("voucher_accounts#create")
    end

    it "routes to #update" do
      put("/voucher_accounts/1").should route_to("voucher_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/voucher_accounts/1").should route_to("voucher_accounts#destroy", :id => "1")
    end

  end
end

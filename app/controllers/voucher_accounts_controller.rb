class VoucherAccountsController < ApplicationController
  # GET /voucher_accounts
  # GET /voucher_accounts.json
  def index
    @voucher_accounts = VoucherAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @voucher_accounts }
      format.xml { render :xml => @voucher_accounts }
    end
  end

  # GET /voucher_accounts/1
  # GET /voucher_accounts/1.json
  def show
    @voucher_account = VoucherAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @voucher_account }
    end
  end

  # GET /voucher_accounts/new
  # GET /voucher_accounts/new.json
  def new
    @voucher_account = VoucherAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @voucher_account }
    end
  end

  # GET /voucher_accounts/1/edit
  def edit
    @voucher_account = VoucherAccount.find(params[:id])
  end

  # POST /voucher_accounts
  # POST /voucher_accounts.json
  def create
    @voucher_account = VoucherAccount.new(params[:voucher_account])

    respond_to do |format|
      if @voucher_account.save
        format.html { redirect_to @voucher_account, :notice => 'Voucher account was successfully created.' }
        format.json { render :json => @voucher_account, :status => :created, :location => @voucher_account }
      else
        format.html { render :action => "new" }
        format.json { render :json => @voucher_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voucher_accounts/1
  # PUT /voucher_accounts/1.json
  def update
    @voucher_account = VoucherAccount.find(params[:id])

    respond_to do |format|
      if @voucher_account.update_attributes(params[:voucher_account])
        format.html { redirect_to @voucher_account, :notice => 'Voucher account was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @voucher_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /voucher_accounts/1
  # DELETE /voucher_accounts/1.json
  def destroy
    @voucher_account = VoucherAccount.find(params[:id])
    @voucher_account.destroy

    respond_to do |format|
      format.html { redirect_to voucher_accounts_url }
      format.json { head :ok }
    end
  end
end

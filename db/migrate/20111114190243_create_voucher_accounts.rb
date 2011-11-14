class CreateVoucherAccounts < ActiveRecord::Migration
  def change
    create_table :voucher_accounts do |t|
      t.string :name
      t.integer :balence
      t.string :currency

      t.timestamps
    end
  end
end

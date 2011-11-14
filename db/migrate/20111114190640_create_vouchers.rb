class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.integer :client_id
      t.integer :plan_id

      t.timestamps
    end
  end
end

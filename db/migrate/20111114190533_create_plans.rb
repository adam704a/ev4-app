class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.datetime :disbursement_date
      t.datetime :expiration_date
      t.integer :credit
      t.integer :ratio

      t.timestamps
    end
  end
end

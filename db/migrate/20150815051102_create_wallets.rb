class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.integer :balance_left
      t.integer :days_left

      t.timestamps null: false
    end
  end
end

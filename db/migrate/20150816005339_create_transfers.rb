class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|

      t.timestamps null: false
    end
  end
end

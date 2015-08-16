class CreateCreateMapingRequests < ActiveRecord::Migration
  def change
    create_table :create_maping_requests do |t|

      t.timestamps null: false
    end
  end
end

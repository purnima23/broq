class CreateSaves < ActiveRecord::Migration
  def change
    create_table :saves do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

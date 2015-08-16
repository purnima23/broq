class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :info
      t.integer :quantity

      t.timestamps
    end
  end
end

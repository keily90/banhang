class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :userid
      t.integer :productid
      t.integer :number

      t.timestamps
    end
  end
end

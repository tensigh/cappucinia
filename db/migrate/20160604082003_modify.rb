class Modify < ActiveRecord::Migration
  def change
    change_table :cappucinia do |t|
      t.string :restaurantName
      t.string :restaurantAdd
      t.string :restaurantPhone
      t.string :restaurantWebsite
      t.string :productName
      t.string :productPrice
      t.string :productRating
      t.string :comments   
    end
  end
end

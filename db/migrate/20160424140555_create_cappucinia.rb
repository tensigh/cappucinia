class CreateCappucinia < ActiveRecord::Migration
  def change
    create_table :cappucinia do |t|
      t.string :name
      t.string :body
      t.string :restaurantName
      t.string :restaurantAdd
      t.string :restaurantPhone
      t.string :restaurantWebsite
      t.string :productName
      t.string :productPrice
      t.string :productRating
      t.string :comments

      t.timestamps null: false
    end
  end
end

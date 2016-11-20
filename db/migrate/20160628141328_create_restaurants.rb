class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :resName
      t.string :resAdd
      t.string :resPhone
      t.string :resWebsite
      t.string :productName
      t.string :productPrice
      t.string :productRating
      t.string :comments   
      t.timestamps null: false
    end
  end
end

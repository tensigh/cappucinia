class Cappucinium < ActiveRecord::Base
    validates :restaurantName, :productName, :productPrice, presence: true
end
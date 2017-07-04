class Cappucinium < ActiveRecord::Base
    validates :restaurantName, :productName, :productPrice, presence: true
    belongs_to :user
end
class Product < ApplicationRecord
  has_many :order_items
  has_many :orders
end

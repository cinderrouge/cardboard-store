class Order < ApplicationRecord
  has_many :order_items
  
  before_save :set_subtotal

  SHIPPING = 30

  def subtotal
    order_items.collect {|item| item.valid? ? (item.unit_price*item.quantity) :0}.sum
  end

  def shipping_cost
    self.shipping == SHIPPING
  end

  private
  def set_subtotal
    self[:subtotal] = subtotal
  end

end

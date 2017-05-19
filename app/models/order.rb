class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user

  def subtotal
    product.price * quantity
  end

  def tax
    subtotal * 0.09
  end

  def total
    subtotal + tax
  end
end

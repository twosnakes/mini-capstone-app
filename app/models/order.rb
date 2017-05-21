class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user, optional: true

  def subtotal
    self.subtotal = product.price * quantity
  end

  def tax
    self.tax = subtotal * 0.09
  end

  def total
    self.total = subtotal + tax
  end
end

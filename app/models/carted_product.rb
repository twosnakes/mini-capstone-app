class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { minimum: 1 }
  

  def subtotal
    product.price * quantity 

    
  end
end

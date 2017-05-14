class Product < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def name_and_description
    "{name} #{description}"
  end

  def sale_message
    if discounted? 
      "Sale Photograph" 
    else 
      "Regularly Priced"
    end

    

    def discounted?
     price < 200.00
    end

    def tax
      price * 0.99
    end

    def total
      prict + tax
    end
  end
end

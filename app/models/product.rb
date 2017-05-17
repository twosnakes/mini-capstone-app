class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://2.bp.blogspot.com/-jtgPyWdc7mA/WPMTJK64BVI/AAAAAAAAGKc/35X90QYVgYUmeTYI0CFCvwjMbEYCnsZYQCK4B/s1600/Onions%2B%2526%2BGarlic.jpg"
    else 
      images.first.url
    end
  end

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
  end
    

    def discounted?
     price < 200.00
    end

    def tax
      price * 0.99
    end

    def total
      price + tax
    end
end


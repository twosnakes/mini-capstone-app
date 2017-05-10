class Product < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def name_and_description
    "{name} #{description}"
  end

  def sale_message
    if price < $250
      "" 
    else "Regularly Priced"
end

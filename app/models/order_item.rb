class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order


    def unit_price
        
            product.price
       
    end


    def total
      unit_price*quantity
    end


    private

    def set_unit_price
        self[:unit_price] = unit_price 
    end

    def set_total
        self[:total] = total 
    end
end

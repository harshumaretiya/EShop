class Product < ApplicationRecord
    has_many :order
    has_many :order_items
    belongs_to :user
    has_attached_file :image,styles: {  large: "640x480^", medium: "300x300>", thumb: "100x100^" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    searchable do
        
        text :product_name, :price
       
        time :created_at
      end
    
end

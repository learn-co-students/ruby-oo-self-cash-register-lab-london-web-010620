require 'pry'
class CashRegister
    attr_accessor :discount, :total, :item, :price, :cart, :last_transaction
    
    def initialize( discount = 0 )
        @total = 0 
        @discount = discount 
        @cart = []
    end

    def total
        return @total
    end

    def add_item(item, price, quantity = 1)
        @price = price
        @item = item
        self.total += price * quantity
        quantity.times do
            self.cart << item
        end
        @last_transaction = price * quantity
       
        
    end

    def apply_discount       
        if discount > 0
            discounted_total = (self.total * discount)/100
            self.total -= discounted_total
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total -= @last_transaction
    end
end



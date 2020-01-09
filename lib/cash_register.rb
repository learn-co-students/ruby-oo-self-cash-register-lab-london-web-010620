require 'pry'
class CashRegister
    
    attr_accessor :total, :discount, :quantity, :items, :price, :last_transaction

    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
        
    end

    def add_item(title,price,quantity = 1)
        @price = price
        @total += price * quantity
        @last_transaction = price * quantity
        @total
       

        if quantity > 1
            counter = 0 
            while counter < quantity
                @items << title
                counter += 1
            end
        else
            @items << title
        end

    end

    def apply_discount
        if @discount > 0

            @total -= (@price * @discount) / 100 
            return "After the discount, the total comes to $#{total}."      
        else
            return "There is no discount to apply."
            @total = @price * @quantity
           
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
        @total.to_f
        
    end

end




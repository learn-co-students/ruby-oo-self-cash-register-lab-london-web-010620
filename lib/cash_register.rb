class CashRegister
    attr_accessor :total, :discount, :void


    def initialize(discount = 0)
       @total = 0 
       @discount = discount
       @cart = []
    end

    def add_item(title, price, quantity = 1)
        @total += price*quantity
        @cart <<(title)
        @void = price * quantity
    end

    def apply_discount
        if discount == 0 
            return "There is no discount to apply."
        end

        @total -= total*discount / 100
        return "After the discount, the total comes to $#{@total}."
    end

    def items
        @cart
    end

    def void_last_transaction
        @total -= @void
    end
end

class CashRegister 

    attr_accessor :total, :discount, :price, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []

    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do 
            @cart << title
        @last_transaction = [price, quantity]
        end
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            @total -= total * discount / 100
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items 
        @cart
    end

    def void_last_transaction
        @total -= last_transaction[0] * last_transaction[1]
    end

end



class CashRegister

    attr_accessor :total, :discount, :item, :price, :cart, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(item, price, quantity=1)
        @total += price*quantity
        @price = price
        @item = item 
        @quantity = quantity
        quantity.times do 
            @cart << item
        end
        @last_transaction = @price*@quantity
    end

    def apply_discount
        if discount > 0
        @total -= total * @discount / 100
        return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        return @cart
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end

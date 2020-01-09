
class CashRegister
    attr_accessor :discount, :total, :title, :last_transaction

    def initialize(discount =0)
        @total = 0
        @discount = discount
        @cart =[]
    end
    
    def add_item(title,price,quantity = 1)
        @total += price * quantity
        quantity.times do 
            @cart << title
        self.last_transaction = [title, price, quantity]

        end
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
          @total -= total*discount / 100
          return "After the discount, the total comes to $#{total}."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total -= self.last_transaction[1] * self.last_transaction[2]
        self.last_transaction[2].times do
        self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
        end
    end
end

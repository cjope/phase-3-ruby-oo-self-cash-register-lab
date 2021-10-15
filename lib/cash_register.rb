require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :checkout
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, qty = 1)
        self.checkout = price * qty
        self.total += self.checkout
        qty.times {self.items << title}
    end

    def apply_discount
        if self.discount >0
            disc = self.discount*10
            self.total = self.total - disc
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.checkout
        binding.pry

    end
end
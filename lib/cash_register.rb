require "pry"

class CashRegister
    attr_accessor :total, :discount, :title, :items, :current_items
def initialize (discount=0)
        @total=0
        @discount = discount
        self.items= []
    def  apply_discount
        if @discount !=0
             discount_amount = @discount.to_f/100
              discount_amount= @total *discount_amount
             @total=@total - discount_amount
             "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end
end



def add_item (title,price, quantity=1)
    @current_items = []
    @title=title
    @price=price
    @quantity=quantity
    total_price=quantity*price 

quantity.times do 
     self.items << self.title 
     self.current_items << self.title 
end
@total=total+total_price
end

def void_last_transaction



@total =@total-@price
if self.current_items == self.items
@total=0.0
end
end







end



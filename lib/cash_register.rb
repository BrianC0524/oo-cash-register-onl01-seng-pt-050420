class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(total = 0, discount = 0)
    
    @total = total
    @discount = discount
    
  end
  
  def add_item(title, price, quantity = 1)
    
    new_total = price * quantity
    prev_total = self.total
    self.total += new_total
    
  end
  
  def apply_discount
    
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
    
  end
  
end

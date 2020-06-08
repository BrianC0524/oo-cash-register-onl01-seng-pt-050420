class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(total = 0, discount = 20)
    
    @total = total
    @discount = discount
    
  end
  
  def add_item(title, price, quantity = 1)
    
    new_total = price * quantity
    prev_total = self.total
    self.total += new_total
    
  end
  
  def apply_discount
    
    if self.discount > 0
      self.discount = self.discount/100.to_f
      self.total = self.total - (self.total * (self.discount))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
    
  end
  
end

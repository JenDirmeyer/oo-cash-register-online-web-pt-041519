require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @old_total = 0
  end  
  
  def add_item(title,price,q = 1)
    @old_total = @total
    @total = @total + (price*q) 
    q.times {@items << title}
  end  
  
  def apply_discount
    if discount == 0 
      return "There is no discount to apply."
    else   
      @total = @total*(1-(@discount/100.0))
      return "After the discount, the total comes to $#{@total.to_i}."
    end  
  end  
  
  def items
    @items
  end  
  
  def void_last_transaction
    @total = @old_total
  end  
end  

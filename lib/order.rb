require_relative 'menu'

class Order

attr_reader :menu, :food_order

  def initialize
    @food_order = []
    @menu = Menu.new
  end

  def add(food, price)
    @food_order << {food => price}
  end

  def delete(food)
    @food_order.pop
  end

  def confirm_order
    if @food_order == nil
      a = @food_order[0]
      a.each {|k,v| puts "You have overed #{k} and it will cost £#{v}"}
    else
      "Your order is empty"
    end
  end
end

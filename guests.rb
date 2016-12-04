class Guest

  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
  end
  
  def pay_entry()
    @cash -= 5
  end

end
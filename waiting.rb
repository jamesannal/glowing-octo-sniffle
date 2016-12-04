class Waiting

  def initialize()
    @people_waiting = [] 
  end

  def people_waiting
    return @people_waiting.count()
  end
end
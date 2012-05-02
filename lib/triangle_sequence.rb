class TriangleSequence
  def initialize()
    @current = 0
    @increment = 0
  end
  
  def next
    @increment += 1
    @current += @increment
  end
end
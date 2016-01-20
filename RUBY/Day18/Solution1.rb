class Palindrome
  #Write your code here
  
  def initialize
    @stack, @queue = [Array.new(), Array.new()]
    @stack_pos, @queue_pos = 0, 0
  end
  
  def pushCharacter c
    @stack.push c
    @stack_pos += 1
  end
  def enqueueCharacter c
    @queue.push c
  end
  def popCharacter
    raise IndexException("empty stack") if @stack_pos == 0
    @stack_pos -= 1
    return @stack[@stack_pos]
  end
  def dequeueCharacter
    raise IndexException("empty queue") if @queue_pos == @queue.length
    @queue_pos += 1
    return @queue[@queue_pos-1]
  end
end

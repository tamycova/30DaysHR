class Solution
  def insert(head,value)
    if head.nil?
      Node.new(value)
    else
      node = head
      node = node.next until node.next.nil?
      node.next = Node.new(value)
      head
    end        
  end
end

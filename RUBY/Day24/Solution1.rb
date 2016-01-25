def removeDuplicates head
  node = head
  until node.nil? or node.next.nil? do
    if node.data == node.next.data
      node.next = node.next.next
    else
      node = node.next
    end
  end
  return(head)
end

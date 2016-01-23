def levelOrder(root)
  to_visit = Queue.new
  to_visit.push root unless root.nil?
  until to_visit.empty? do
    node = to_visit.pop
    print "#{node.data} "
    to_visit.push node.left  if node.left
    to_visit.push node.right if node.right
  end
end

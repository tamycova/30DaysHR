def getHeight(root)
  max_depth = 0
  to_search = root.nil? ? [] : [[root,1]]
  until to_search.empty?
    path = to_search.pop
    max_depth = path[1] if path[1] > max_depth
    to_search.push([path[0].left,  path[1]+1]) unless path[0].left.nil?
    to_search.push([path[0].right, path[1]+1]) unless path[0].right.nil?
  end
  return(max_depth)
end

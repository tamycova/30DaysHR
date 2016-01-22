def getHeight(root)
  [root.left.nil? ? 0 : getHeight(root.left), root.right.nil? ? 0 : getHeight(root.right)].max + 1
end

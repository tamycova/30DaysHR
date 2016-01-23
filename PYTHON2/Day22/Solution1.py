    def getHeightInternal(self, root, m):
        if not root:
            return m
        return max(self.getHeightInternal(root.left, m+1), self.getHeightInternal(root.right, m+1))
    
    def getHeight(self, root):
        return self.getHeightInternal(root, 0)
    
    

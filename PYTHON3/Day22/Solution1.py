    def getHeight(self,root):
        return 0 if (not root) else 1+ max(self.getHeight(root.left), self.getHeight(root.right));

    queue = []
    def levelOrder(self,root):      
        if root.left: self.queue.append(root.left)
        if root.right: self.queue.append(root.right)
        print(root.data, end=' ')
        if self.queue: self.levelOrder(self.queue.pop(0))
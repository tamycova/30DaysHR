    
    def levelOrder(self,root):
        queue = [root]
        self.bfs(queue)
        
    def bfs(self, queue):
        while len(queue) > 0:
            node = queue.pop(0)
            print node.data,
            if (node.left): queue.append(node.left)
            if (node.right): queue.append(node.right)

    def removeDuplicates(self, head):
        if not head:
            return head
        
        tmp = head
        while tmp:
            n = tmp.next
            while (n and n.data == tmp.data):
                n = n.next
            tmp.next = n
            tmp = n
        return head


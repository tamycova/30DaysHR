def insert(self,head,sata): 
        if head==None:
            head=Node()
            head.data=sata
        else:
            start=head
            while start.next :start=start.next
            start.next=Node()
            start=start.next
            start.data=sata
        return head

    this.removeDuplicates=function(head){
        if (head == null)
            return head;
        var node = head;
        while (node.next != null){
            if (node.data == node.next.data)
                node.next = node.next.next;
            else
                node = node.next;
        }
        return head; 
    }
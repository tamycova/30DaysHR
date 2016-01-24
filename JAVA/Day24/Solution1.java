    static Node removeDuplicates(Node head) {
        if (head == null)
            return head;
        Node tmp = head;
        while (tmp != null) {
            Node n = tmp.next;
            while (n != null && n.data == tmp.data)
                n = n.next;
            tmp.next = n;
            tmp = tmp.next;
        }
        return head;
    }

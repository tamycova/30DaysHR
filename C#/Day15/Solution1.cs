    public static Node insert(Node head, int data)
    {
        if (head == null)
            return new Node(data);
        Node tmp = head;
        for (; tmp.next != null; tmp = tmp.next);
        tmp.next = new Node(data);
        return head;
    }
    

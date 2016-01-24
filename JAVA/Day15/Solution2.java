	public static  Node insert(Node head,int data)
	{
        if (head == null) {
            head = new Node (data);
        }
        else {
            Node tail = new Node(data);
            Node current = head;
            while (current.next != null) {
                current=current.next;
            }
            current.next=tail;   
             }
       return head;
	}

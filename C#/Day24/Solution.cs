public static Node removeDuplicates(Node head)
{
    Node tmp = head;
    while (tmp != null)
    {
        while (tmp.next != null && tmp.data == tmp.next.data)
            tmp.next = tmp.next.next;
        tmp = tmp.next;
    }
    return head;
}

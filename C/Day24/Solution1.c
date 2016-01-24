Node* removeDuplicates(Node *head){
    if (!head)
        return head;
    
    Node *tmp = head;
    while (tmp) {
        Node *n = tmp->next;
        while (n && n->data == tmp->data)
            n = n->next;
        tmp->next = n;
        tmp = n;
    }
    return head;
}

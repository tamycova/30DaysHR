Node* removeDuplicates(Node *head){
    if (!head)
        return head;
    
    Node *tmp = head;
    while (tmp) {
        Node *n = tmp->next;
        while (n && n->data == tmp->data) {
            Node *toFree = n;
            n = n->next;
            free(toFree);
        }
        tmp->next = n;
        tmp = n;
    }
    return head;
}

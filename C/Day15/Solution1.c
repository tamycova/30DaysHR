Node* insert(Node *head,int data)
{
    Node * newNode = malloc(sizeof(newNode));
    newNode->next = NULL;
    newNode->data = data;
    
    if (!head)
        return newNode;
        
    Node* tmp = head;
    while (tmp->next)
        tmp = tmp->next;
    tmp->next = newNode;
    return head;
}

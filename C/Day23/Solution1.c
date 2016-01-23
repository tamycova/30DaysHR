/*
 * A simple linked list data structure
 */
typedef struct List {
    struct List* next;
    Node* data;
} List;

/*
 * Add an element to the end of the list.
 * If the list is empty, this creates a new list
 * with the provided element.
 * 
 * Returns: The head of the list.
 */
List* append(List* list, Node* node) {
    List* new = malloc(sizeof(new));
    new->next = NULL;
    new->data = node;
    if (list == NULL) {
        return new;
    }
    List* tmp = list;
    while (tmp->next != NULL)
        tmp = tmp->next;
    tmp->next = new;
    return list;
}

/*
 * Tests whether the list is empty
 *
 * Returns: 1 if the list is empty, 0 otherwise.
 */
int isEmpty(List* list) {
    return list == NULL;
}

/*
 * Removes the first element of the list, if it exists.
 *
 * Returns: the remove element or NULL, if the list is empty.
 */
Node* removeFirst(List** queue) {
    if (queue == NULL) {
        return NULL;
    }
    List* list = *queue;
    if (list == NULL)
        return NULL;

    Node* result = list->data;
    List* toRemove = list;
    if (toRemove != NULL) {
        *queue = toRemove->next;
        free(toRemove);
    } else {
        *queue = NULL;
    }
    return result;
}

/*
 * Performs a breadth-first visit of the tree.
 */
void levelOrder(Node* root){
    List* queue = append(NULL, root);
    while (!isEmpty(queue)) {
        Node* node = removeFirst(&queue);
        printf("%d ", node->data);
        if (node->left)
            queue = append(queue, node->left);
        if (node->right)
            queue = append(queue, node->right);
    }
}

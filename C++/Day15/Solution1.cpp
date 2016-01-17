      Node* insert(Node *head,int data)
      {
          if (head == NULL)
          {
              head = new Node(data);
          }
          else
          {
              Node *n, *h=head;
              n = new Node(data);
              while (h->next!=NULL)
                  h = h->next;
              h->next=n;
          }
          return head;
      }

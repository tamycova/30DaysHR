		int getHeight(Node* root){
            if (root == NULL){
                return 0;
            } else {
                return max (getHeight(root->right)+1, getHeight(root->left)+1);
            }
        }

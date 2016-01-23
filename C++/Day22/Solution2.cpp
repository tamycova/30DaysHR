int getHeight(Node* root){
	return root==NULL ? 0 : max(getHeight(root->right), getHeight(root->left)) + 1;
}

int max(int a, int b){
    return a>b ? a : b;
}
int getHeight(Node* root){
	return root==NULL ? 0 : max(getHeight(root->right), getHeight(root->left)) + 1;
}

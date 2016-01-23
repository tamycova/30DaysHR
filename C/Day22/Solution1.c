int getHeightInternal(Node* root, int max) {
    if (!root)
        return max;
    max++;
    int left = getHeightInternal(root->left, max);
    int right = getHeightInternal(root->right, max);
    return left > right ? left : right;
}

int getHeight(Node* root){
    return getHeightInternal(root, 0);
}

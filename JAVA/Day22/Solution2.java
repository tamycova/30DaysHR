public static int getHeight(Node root){
        return (root == null) ? 0 : 1 + Math.max(getHeight(root.left), getHeight(root.right));
}

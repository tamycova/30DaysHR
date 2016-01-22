static int getHeight(Node root) => root == null ? 0 : 1 + Math.Max(getHeight(root.left), getHeight(root.right));

    private static int max = 0;

    public static int getHeight(Node root){
        if (root == null)
            return Solution.max;
        return 1+Math.max(Solution.getHeight(root.left), Solution.getHeight(root.right));
    }


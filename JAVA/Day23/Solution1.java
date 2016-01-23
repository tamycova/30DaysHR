    private static Queue<Node> sNodesToVisit = new LinkedList<>();

    static void levelOrder(Node root){
        sNodesToVisit.add(root);
        bfs();
    }

    private static void bfs() {
        while (!sNodesToVisit.isEmpty()) {
            Node n = sNodesToVisit.poll();
            System.out.print(n.data+" ");
            
            if (n.left != null)
                sNodesToVisit.add(n.left);
            if (n.right != null)
                sNodesToVisit.add(n.right);
        }
    }

public static IList<Node> queue = new List<Node>();

static void levelOrder(Node root)
{
    int i = 0;
    while (root != null)
    {
        Console.Write($"{root.data} ");
        if (root.left != null)
            queue.Add(root.left);
        if (root.right != null)
            queue.Add(root.right);
        root = queue.ElementAtOrDefault(i);
        i++;
    }
}

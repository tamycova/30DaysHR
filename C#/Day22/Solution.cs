static int getHeight(Node root)
{
    int a = 1;
    int b = 1;
    if (root.left != null)
        a += getHeight(root.left);
    if (root.right != null)
        b += getHeight(root.right);
    return Math.Max(a, b);
}

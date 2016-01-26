        if (!root)
            return 0;
        else
            return 1 + Math.max(this.getHeight(root.left), this.getHeight(root.right));
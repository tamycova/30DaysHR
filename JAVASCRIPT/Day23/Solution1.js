        var queue = [];
        queue.push(root)
        while (Object.keys(queue).length){
            var node = queue.shift();
            process.stdout.write(node.data + ' ');
            if (node.left)
                queue.push(node.left);
            if (node.right)
                queue.push(node.right);          
        }
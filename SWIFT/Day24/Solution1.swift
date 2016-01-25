        var temp: Node? = head
        while let validTemp = temp {
            if let nextNode = validTemp.next{
                if(validTemp.data == nextNode.data){
                    validTemp.next = nextNode.next
                }else{
                    temp = nextNode
                }
            } else{
                break
            }
        }
        return head

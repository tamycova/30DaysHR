if let validHead = head{
    var temp: Node? = validHead
    while let validTemp = temp {
        if let nextNode = validTemp.next{
            if(validTemp.data == nextNode.data){
                validTemp.next = nextNode.next
            }else{
                temp = nextNode
            }
        } else{
            temp = validTemp.next
        }
    }
}
return head

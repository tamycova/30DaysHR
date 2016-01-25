var temp: Node? = head
while let nextNode = temp?.next {
    if temp!.data == nextNode.data {
        temp!.next = nextNode.next
    } else {
        temp = nextNode
    }
}
return head

class Palindrome {
    var stack = Stack()
    var queue = Queue()
    
    func pushCharacter(c: Character) {
        stack.push(c)
    }
    
    func popCharacter() -> Character {
        return stack.pop()
    }
    
    func enqueueCharacter(c: Character) {
        queue.enqueue(c)
    }
    
    func dequeueCharacter() -> Character {
        return queue.dequeue()
    }
}

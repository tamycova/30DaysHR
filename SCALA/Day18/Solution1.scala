class Palindrome{
   private var stack = Stack[Char]()
   private var queue = Queue[Char]()

    def enqueueCharacter(c: Char) {
        queue.enqueue(c)
    }

    def pushCharacter(c: Char) {
        stack.push(c)
    }

    def popCharacter(): Char  = {
        stack.pop
    }

    def dequeueCharacter(): Char  = {
        queue.dequeue
    }
}

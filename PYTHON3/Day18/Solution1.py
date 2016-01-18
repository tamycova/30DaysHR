from queue import Queue
class Palindrome:
    def __init__(self):
        self.stack = list()
        self.queue = Queue()
    def pushCharacter(self, c) :
        self.stack.append(c)
    def enqueueCharacter(self, c):
        self.queue.put(c)
    def popCharacter(self):        
        return self.stack.pop()
    def dequeueCharacter(self):
        return self.queue.get()

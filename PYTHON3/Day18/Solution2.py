from collections import deque
class Palindrome:
    def __init__(self):
        self.stack = deque()
        self.queue = deque()
    def pushCharacter(self, c):
        self.stack.append(c)
    def enqueueCharacter(self, c):
        self.queue.append(c)
    def popCharacter(self):
        return self.stack.pop()
    def dequeueCharacter(self):
        return self.queue.popleft()

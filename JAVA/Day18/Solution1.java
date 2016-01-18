class Palindrome {
    private Deque<Character> stack;
    private Queue<Character> queue;
    
    public Palindrome() {
        stack = new LinkedList<>();
        queue = new LinkedList<>();
    }
    
    public void enqueueCharacter(char c) {
        queue.add(Character.valueOf(c));
    }
    
    public void pushCharacter(char c) {
        stack.push(Character.valueOf(c));
    }
    
    public char popCharacter() {
        return stack.pop().charValue();
    }
    
    public char dequeueCharacter() {
        return queue.poll().charValue();
    }

}

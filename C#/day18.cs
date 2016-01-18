using System;
using System.Text;
using static System.Console;

class Palindrome
{
    private StringBuilder stack;
    private StringBuilder queue;

    public Palindrome()
    {
        stack = new StringBuilder();
        queue = new StringBuilder();
    }

    public void pushCharacter(char c)
    {
        stack.Append(c);
    }

    public void enqueueCharacter(char c)
    {
        queue.Append(c);
    }

    public char popCharacter()
    {
        char ret = stack[stack.Length - 1];
        stack.Remove(stack.Length - 1, 1);
        return ret;
    }

    public char dequeueCharacter()
    {
        char ret = queue[0];
        queue.Remove(0, 1);
        return ret;
    }
}

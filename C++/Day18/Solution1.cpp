#include <stack>
#include <queue>
#include <iostream>
#include <string>
using namespace std;

class Palindrome {
    //Write your code here
    stack<char> _stack;
    queue<char> _queue;
    
    public:
    
        void pushCharacter(char& c) {
            this->_stack.push(c);
        }
    
        void enqueueCharacter(char& c) {
            this->_queue.push(c);
        }
    
        char popCharacter() {
            auto c = this->_stack.top();
            
            this->_stack.pop();
            
            return c;
        }
    
        char dequeueCharacter() {
            auto c = this->_queue.front();
            
            this->_queue.pop();
            
            return c;
        }
};
int main() {
    // read the string s.
    string s;
    getline(cin, s);
    
  	// create the Palindrome class object p.
    Palindrome p;
    
    // push all the characters of string s to stack.
    for (int i = 0; i < s.length(); i++) {
        p.pushCharacter(s[i]);
    }
    
    // enqueue all the characters of string s to queue.
    for (int i = 0; i < s.length(); i++) {
        p.enqueueCharacter(s[i]);
    }
    
    bool f = true;
    
    // pop the top character from stack.
    // dequeue the first character from queue.
    // compare both the characters.
    for (int i = 0; i < s.length(); i++) {
        if (p.popCharacter() != p.dequeueCharacter()) {
            f = false;
            
            break;
        }
    }
    
    // finally print whether string s is palindrome or not.
    if (f) {
        cout << "The word, " << s << ", is a palindrome.";
    } else {
        cout << "The word, " << s << ", is not a palindrome.";
    }
    
    return 0;
}
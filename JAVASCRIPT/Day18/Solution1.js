function Palindrome(){
    this.stack = [];
    this.queue = [];
}

Palindrome.prototype.pushCharacter = function(ch){this.stack.push(ch);}
Palindrome.prototype.enqueueCharacter = function(ch){this.queue.push(ch);}
Palindrome.prototype.popCharacter = function(){ return this.stack.pop();}
Palindrome.prototype.dequeueCharacter = function(){return this.queue.shift();}
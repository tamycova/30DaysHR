function Person(initial_Age){
    // Add some more code to run some checks on initial_Age
    this.age = Number(initial_Age);
    if (!isNaN(this.age)) {
        if (this.age < 0) {
            this.age = 0;
            console.log('This person is not valid, setting age to 0.');
        }
    }

    this.amIOld=function(){
        // Do some computations in here and print out the correct statement to the console
        var out;

        if (this.age < 13) {
           out = 'You are young.';
        } else if (this.age >= 13 && this.age < 18) {
           out = 'You are a teenager.';
        } else {
           out = 'You are old.';
        }

        console.log(out);
    };

    this.yearPasses=function(){
          // Increment the age of the person in here
       this.age++;
    };
}
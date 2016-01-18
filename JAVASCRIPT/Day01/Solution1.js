function processData(input) {
   var data = [5.35,'a',false,100,"I am a code monkey",true,17.3,'c',"derp"];

   data.forEach(function(value) {
       if (typeof value === 'number') {
           if (value.toString().indexOf('.') !== -1) {
               output = 'Primitive : double';
           } else {
               output = 'Primitive : int';
           }
       } else if (typeof value === 'boolean') {
           output = 'Primitive : boolean';
       } else if (typeof value === 'string') {
           if (value.length === 1) {
               output = 'Primitive : char';
           } else {
               output = 'Referenced : String';
           }
       } else if (typeof value === 'object') {
           if (Array.isArray(value)) {
               output = 'Referenced : Array';
           }
       }

       if (output)
           console.log(output);
   });
}

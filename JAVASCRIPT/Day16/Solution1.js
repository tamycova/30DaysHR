function processData(input) {
    A = input.split('\n')[1].split(' ').map(Number);
    MergeSort(A, 0, A.length-1);
    
    var minDiff = A[1]-A[0];
    var B = [];
    for (var i=1; i<A.length; i++){
        var diff = A[i]-A[i-1];
        if (diff<minDiff){
            B = [];
            B.push(A[i-1]);
            B.push(A[i]);
            minDiff = diff;
        }
        else if (diff == minDiff){
            B.push(A[i-1]);
            B.push(A[i]);
        }
    }
    var str = '';
    for (var i=0; i<B.length; i++)
        str += B[i]+' ';
    console.log(str);
} 

function MergeSort(A, i, j){
    if (i<j){
        var mid = parseInt((i+j)/2);
        
        MergeSort(A, i, mid);
        MergeSort(A, mid+1, j);
        Merge(A, i, mid, j);
    }
}

function Merge(A, a, mid, b){
    var left = A.slice(a, mid+1);
    var right = A.slice(mid+1, b+1);
    
    var m=0;
    var n=0;
    var i = a;
    
    while (m<left.length && n<right.length){
        if (left[m]<right[n])
            A[i] = left[m++];
        else
            A[i] = right[n++];
        i++;
    }
    
    while (m<left.length)
        A[i++] = left[m++];
    
    while (n<right.length)
        A[i++] = right[n++];
}
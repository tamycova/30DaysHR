	// Add your code here
Difference (int[] a){
    elements = new int[a.length];
    for (int i = 0; i < a.length; i++){
        elements[i] = a[i];
    }
}

public void computeDifference() {
    Arrays.sort(elements);
    maximumDifference = elements[elements.length-1] - elements[0];
}

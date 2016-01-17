public Difference(int a[]) {
    elements = a;
}

public void computeDifference() {
    for (int i=0; i<elements.length-1; i++) {
        for (int j=i+1; j<elements.length; j++) {
            int partial = Math.abs(elements[i]-elements[j]);
            if (partial > maximumDifference) {
                maximumDifference = partial;
            }
        }
    }
}


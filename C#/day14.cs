public Difference(int[] elements) {
    this.elements = elements;
}

public void computeDifference() {
    for (int i=0; i<elements.Length-1; i++) {
        for (int j=i; j<elements.Length; j++) {
            int tmp = Math.Abs(elements[i]-elements[j]);
            if (tmp > this.maximumDifference) {
                this.maximumDifference = tmp;
            }
        }
    }
}

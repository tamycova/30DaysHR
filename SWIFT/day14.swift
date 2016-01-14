init(a: [Int]) {
    self.elements = a
    self.maximumDifference = 0
}

func computeDifference() {
    let length = elements.count
    for i in 0..<length-1 {
        for j in i..<length {
            let partial: Int = abs(elements[i]-elements[j])
            if partial > self.maximumDifference {
                self.maximumDifference = partial
            }
        }
    }
}

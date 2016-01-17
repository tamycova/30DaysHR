    init(a : [Int]){
        elements = a
    }

    func computeDifference() {
        var min = Int.max
        var max = Int.min
        // least complexity, just one for loop to find min and max in array
        for a in elements{
            if a < min { min=a }
            if a > max { max=a }
        }
        // maximum difference can be obtained by taking difference between max and min elements in given data-set
        maximumDifference = max-min
    }

enum Cities {
    case bangkok
    case ratchaburi
    case phetchaburi
    case prajuabkirikhan
    case chumphon
}

let distanceBetweenCities: [Cities: (Int, Int)] = [.bangkok: (1, 0), .ratchaburi: (2, 98), .phetchaburi: (3, 220), .prajuabkirikhan: (4, 400), .chumphon: (5, 660)]

func calculateDistance(first: Cities, last: Cities) {
    if let firstCity = distanceBetweenCities[first], let lastCity = distanceBetweenCities[last] {
        var distance: Int = 0
        var arrayDistance: [Int] = []
        if firstCity.0 < lastCity.0 {
            let range = firstCity.0...lastCity.0
            for (_, value) in distanceBetweenCities {
                if range.contains(value.0) {
                    arrayDistance.append(value.1)
                }
            }
            arrayDistance.sort()
            for i in 1...arrayDistance.count - 1 {
                distance += arrayDistance[i] - arrayDistance[i-1]
                    print(i - 1)
            }
            print(distance)
        } else {
            let range = lastCity.0...firstCity.0
            for (_, value) in distanceBetweenCities {
                if range.contains(value.0) {
                    arrayDistance.append(value.1)
                }
            }
            arrayDistance.sort()
            arrayDistance.reverse()
            print(arrayDistance)
            for i in 1...arrayDistance.count - 1 {
                distance += arrayDistance[i - 1] - arrayDistance[i]
            }
            print(distance)
        }
    }
}

calculateDistance(first: .phetchaburi, last: .ratchaburi)


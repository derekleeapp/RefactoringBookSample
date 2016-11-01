class Price {
    func getPriceCode() -> Int {
        return -1
    }

    func getCharge(daysRented: Int) -> Double {
        var result: Double = 0.0

        switch (getPriceCode()) {

        case Movie.Regular:
            result += 2
            if (daysRented > 2) {
                result += Double(daysRented - 2) * 1.5
            }

        case Movie.NewRelease:
            result += Double(daysRented) * 3

        case Movie.Childrens:
            result += 1.5
            if (daysRented > 3) {
                result += Double(daysRented - 3) * 1.5
            }

        default:
            break

        }

        return result
    }
}

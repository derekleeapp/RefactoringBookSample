class RegularPrice: Price {
    override func getPriceCode() -> Int {
        return Movie.Regular
    }

    override func getCharge(daysRented: Int) -> Double {
        var result: Double = 2.0

        if (daysRented > 2) {
            result += Double(daysRented - 2) * 1.5
        }

        return result
    }
}

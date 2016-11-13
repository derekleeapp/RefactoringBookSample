struct RegularPrice: Price {
    func getCharge(daysRented daysRented: Int) -> Double {
        var result = 2.0

        if (daysRented > 2) {
            result += Double(daysRented - 2) * 1.5
        }

        return result
    }

    func getFrequentRenterPoints(daysRented daysRented: Int) -> Int {
        return 1
    }
}

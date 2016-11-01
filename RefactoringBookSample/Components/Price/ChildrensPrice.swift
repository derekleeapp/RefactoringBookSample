struct ChildrensPrice: Price {
    func getCharge(daysRented: Int) -> Double {
        var result: Double = 1.5

        if (daysRented > 3) {
            result += Double(daysRented - 3) * 1.5
        }

        return result
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return 1
    }
}

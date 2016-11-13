struct ChildrensPrice: Price {
    func getCharge(daysRented daysRented: Int) -> Double {
        var result = 1.5

        if (daysRented > 3) {
            result += Double(daysRented - 3) * 1.5
        }

        return result
    }

    func getFrequentRenterPoints(daysRented daysRented: Int) -> Int {
        return 1
    }
}

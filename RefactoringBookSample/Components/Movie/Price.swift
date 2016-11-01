class Price {
    func getPriceCode() -> Int {
        return -1
    }

    func getCharge(daysRented: Int) -> Double {
        return -1
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        if (getPriceCode() == Movie.NewRelease && daysRented > 1) {
            return 2
        } else {
            return 1
        }
    }
}

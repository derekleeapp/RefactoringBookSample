struct NewReleasePrice: Price {
    func getCharge(daysRented: Int) -> Double {
        return Double(daysRented) * 3
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return (daysRented > 1) ? 2 : 1
    }
}

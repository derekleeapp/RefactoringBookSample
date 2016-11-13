struct NewReleasePrice: Price {
    func getCharge(daysRented daysRented: Int) -> Double {
        return Double(daysRented) * 3
    }

    func getFrequentRenterPoints(daysRented daysRented: Int) -> Int {
        return (daysRented > 1) ? 2 : 1
    }
}

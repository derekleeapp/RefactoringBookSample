protocol Price {
    func getCharge(daysRented: Int) -> Double
    func getFrequentRenterPoints(daysRented: Int) -> Int
}

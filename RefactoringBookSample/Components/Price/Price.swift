protocol Price {
    func getCharge(daysRented daysRented: Int) -> Double
    func getFrequentRenterPoints(daysRented daysRented: Int) -> Int
}

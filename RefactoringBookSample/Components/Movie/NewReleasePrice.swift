class NewReleasePrice: Price {
    override func getPriceCode() -> Int {
        return Movie.NewRelease
    }

    override func getCharge(daysRented: Int) -> Double {
        return Double(daysRented) * 3
    }
}

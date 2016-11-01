class ChildrensPrice: Price {
    override func getPriceCode() -> Int {
        return Movie.Childrens
    }

    override func getCharge(daysRented: Int) -> Double {
        var result: Double = 1.5

        if (daysRented > 3) {
            result += Double(daysRented - 3) * 1.5
        }

        return result
    }
}

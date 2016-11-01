class Price {
    func getPriceCode() -> Int {
        return -1
    }

    func getCharge(daysRented: Int) -> Double {
        return -1
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return 1
    }
}

extension Price: Equatable {}

func ==(lhs: Price, rhs: Price) -> Bool {
    return lhs.getPriceCode() == rhs.getPriceCode()
}

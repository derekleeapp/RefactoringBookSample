class Customer {
    let name: String
    private(set) var rentals: [Rental]

    init(name: String) {
        self.name = name
        self.rentals = []
    }

    func addRental(rental: Rental) {
        rentals.append(rental)
    }

    func statement() -> String {
        var frequentRenterPoints: Int = 0

        var result: String = "Rental Record for \(name)\n"

        // determine amounts for each line
        for each in rentals {
            frequentRenterPoints += each.getFrequentRenterPoints();

            // show figures for this rental
            result += "\t\(each.movie.title)\t\(each.getCharge())\n"
        }

        // add footer lines
        result += "Amount owed is \(getTotalCharge())\n"
        result += "You earned \(frequentRenterPoints) frequent renter points"

        return result
    }

    private func getTotalCharge() -> Double {
        var result: Double = 0.0

        for each in rentals {
            result += each.getCharge()
        }

        return result
    }
}

extension Customer: Equatable {}

func ==(lhs: Customer, rhs: Customer) -> Bool {
    return lhs.name == rhs.name &&
        lhs.rentals == rhs.rentals
}

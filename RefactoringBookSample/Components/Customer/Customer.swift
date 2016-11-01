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
        var totalAmount: Double = 0
        var frequentRenterPoints: Int = 0

        var result: String = "Rental Record for \(name)\n"

        // determine amounts for each line
        for each in rentals {
            let thisAmount = each.getCharge()

            // add frequent renter points
            frequentRenterPoints += 1

            // add bonus for a two day new release rental
            if (each.movie.priceCode == Movie.NewRelease && each.daysRented > 1) {
                frequentRenterPoints += 1
            }

            // show figures for this rental
            result += "\t\(each.movie.title)\t\(thisAmount)\n"
            totalAmount += thisAmount
        }

        // add footer lines
        result += "Amount owed is \(totalAmount)\n"
        result += "You earned \(frequentRenterPoints) frequent renter points"

        return result
    }
}

extension Customer: Equatable {}

func ==(lhs: Customer, rhs: Customer) -> Bool {
    return lhs.name == rhs.name &&
        lhs.rentals == rhs.rentals
}

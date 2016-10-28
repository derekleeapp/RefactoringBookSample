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
            let thisAmount = amountFor(each)

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

    private func amountFor(rental: Rental) -> Double {
        var result: Double = 0.0

        switch (rental.movie.priceCode) {

        case Movie.Regular:
            result += 2
            if (rental.daysRented > 2) {
                result += Double(rental.daysRented - 2) * 1.5
            }

        case Movie.NewRelease:
            result += Double(rental.daysRented) * 3

        case Movie.Childrens:
            result += 1.5
            if (rental.daysRented > 3) {
                result += Double(rental.daysRented - 3) * 1.5
            }

        default:
            break

        }

        return result
    }
}

extension Customer: Equatable {}

func ==(lhs: Customer, rhs: Customer) -> Bool {
    return lhs.name == rhs.name &&
        lhs.rentals == rhs.rentals
}

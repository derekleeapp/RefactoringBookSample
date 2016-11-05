class Customer {
    // MARK: - Properties
    let name: String
    private(set) var rentals: [Rental]

    // MARK: - Initialization
    init(name: String) {
        self.name = name
        self.rentals = []
    }

    // MARK: - Public Methods
    func addRental(rental: Rental) {
        rentals.append(rental)
    }

    func statement() -> String {
        var result: String = "Rental Record for \(name)\n"

        // determine amounts for each line
        for each in rentals {
            // show figures for this rental
            result += "\t\(each.movie.title)\t\(each.getCharge())\n"
        }

        // add footer lines
        result += "Amount owed is \(getTotalCharge())\n"
        result += "You earned \(getTotalFrequentRenterPoints()) frequent renter points"

        return result
    }

    func htmlStatement() -> String {
        var result: String = "<H1>Rentals for <EM>\(name)</EM></H1><P>\n"

        for each in rentals {
            // show figures for this rental
            result += "\(each.movie.title): \(each.getCharge())<BR>\n"
        }

        // add footer lines
        result += "<P>You owe <EM>\(getTotalCharge())</EM><P>\n"
        result += "On this rental you earned <EM>\(getTotalFrequentRenterPoints())</EM> frequent renter points<P>"

        return result
    }

    private func getTotalCharge() -> Double {
        var result: Double = 0.0

        for each in rentals {
            result += each.getCharge()
        }

        return result
    }

    private func getTotalFrequentRenterPoints() -> Int {
        var result: Int = 0

        for each in rentals {
            result += each.getFrequentRenterPoints()
        }

        return result
    }
}

extension Customer: Equatable {}

func ==(lhs: Customer, rhs: Customer) -> Bool {
    return lhs.name == rhs.name
}

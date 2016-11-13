protocol Rental {
    var movie: Movie { get }

    func getCharge() -> Double
    func getFrequentRenterPoints() -> Int
}

struct StandardRental {
    // MARK: - Properties
    let movie: Movie
    private let daysRented: Int

    // MARK: - Initialization
    init(movie: Movie, daysRented: Int) {
        self.movie = movie
        self.daysRented = daysRented
    }
}

// MARK: - Rental
extension StandardRental: Rental {
    func getCharge() -> Double {
        return movie.getCharge(daysRented)
    }

    func getFrequentRenterPoints() -> Int {
        return movie.getFrequentRenterPoints(daysRented)
    }
}

// MARK: - Equatable
extension StandardRental: Equatable {}

func ==(lhs: StandardRental, rhs: StandardRental) -> Bool {
    return
        lhs.movie as? StandardMovie == rhs.movie as? StandardMovie &&
        lhs.daysRented == rhs.daysRented
}

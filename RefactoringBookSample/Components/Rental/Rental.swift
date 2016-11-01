class Rental {
    // MARK: - Properties
    let movie: Movie
    private let daysRented: Int

    // MARK: - Initialization
    init(movie: Movie, daysRented: Int) {
        self.movie = movie
        self.daysRented = daysRented
    }

    // MARK: - Public Methods
    func getCharge() -> Double {
        return movie.getCharge(daysRented)
    }

    func getFrequentRenterPoints() -> Int {
        return movie.getFrequentRenterPoints(daysRented)
    }
}

extension Rental: Equatable {}

func ==(lhs: Rental, rhs: Rental) -> Bool {
    return lhs.movie == rhs.movie &&
        lhs.daysRented == rhs.daysRented
}

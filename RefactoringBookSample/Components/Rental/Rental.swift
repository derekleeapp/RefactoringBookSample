class Rental {
    let movie: Movie
    let daysRented: Int

    init(movie: Movie, daysRented: Int) {
        self.movie = movie
        self.daysRented = daysRented
    }

    func getCharge() -> Double {
        return movie.getCharge(daysRented)
    }

    func getFrequentRenterPoints() -> Int {
        if (movie.priceCode == Movie.NewRelease && daysRented > 1) {
            return 2
        } else {
            return 1
        }
    }
}

extension Rental: Equatable {}

func ==(lhs: Rental, rhs: Rental) -> Bool {
    return lhs.movie == rhs.movie &&
        lhs.daysRented == rhs.daysRented
}

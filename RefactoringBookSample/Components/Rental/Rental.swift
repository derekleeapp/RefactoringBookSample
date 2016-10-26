class Rental {
    let movie: Movie
    let daysRented: Int

    init(movie: Movie, daysRented: Int) {
        self.movie = movie
        self.daysRented = daysRented
    }
}

extension Rental: Equatable {}

func ==(lhs: Rental, rhs: Rental) -> Bool {
    return lhs.movie == rhs.movie &&
        lhs.daysRented == rhs.daysRented
}

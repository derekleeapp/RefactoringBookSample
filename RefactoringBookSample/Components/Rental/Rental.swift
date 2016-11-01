class Rental {
    let movie: Movie
    let daysRented: Int

    init(movie: Movie, daysRented: Int) {
        self.movie = movie
        self.daysRented = daysRented
    }

    func getCharge() -> Double {
        var result: Double = 0.0

        switch (movie.priceCode) {

        case Movie.Regular:
            result += 2
            if (daysRented > 2) {
                result += Double(daysRented - 2) * 1.5
            }

        case Movie.NewRelease:
            result += Double(daysRented) * 3

        case Movie.Childrens:
            result += 1.5
            if (daysRented > 3) {
                result += Double(daysRented - 3) * 1.5
            }

        default:
            break

        }

        return result
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

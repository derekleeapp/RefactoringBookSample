class Movie {
    static let Childrens = 2
    static let Regular = 0;
    static let NewRelease = 1;

    let title: String
    var priceCode: Int

    init(title: String, priceCode: Int) {
        self.title = title
        self.priceCode = priceCode
    }

    func getCharge(daysRented: Int) -> Double {
        var result: Double = 0.0

        switch (priceCode) {

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

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        if (priceCode == Movie.NewRelease && daysRented > 1) {
            return 2
        } else {
            return 1
        }
    }
}

extension Movie: Equatable {}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    return lhs.title == rhs.title &&
        lhs.priceCode == rhs.priceCode
}

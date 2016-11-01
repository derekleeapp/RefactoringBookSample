class Movie {
    static let Childrens = 2
    static let Regular = 0;
    static let NewRelease = 1;

    let title: String
    private var price: Price

    init(title: String, priceCode: Int) {
        self.title = title

        switch priceCode {

        case Movie.Regular:
            price = RegularPrice()

        case Movie.NewRelease:
            price = NewReleasePrice()

        case Movie.Childrens:
            price = ChildrensPrice()

        default:
            price = NullPrice()
        }
    }

    init(regularMovieTitle title: String) {
        self.title = title
        price = RegularPrice()
    }

    init(newReleaseMovieTitle title: String) {
        self.title = title
        price = NewReleasePrice()
    }

    init(childrensMovieTitle title: String) {
        self.title = title
        price = ChildrensPrice()
    }

    func getCharge(daysRented: Int) -> Double {
        return price.getCharge(daysRented)
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return price.getFrequentRenterPoints(daysRented)
    }
}

extension Movie: Equatable {}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    return lhs.title == rhs.title
}

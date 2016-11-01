class Movie {
    static let Childrens = 2
    static let Regular = 0;
    static let NewRelease = 1;

    let title: String
    private var price: Price?

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
            break
        }
    }

    func getCharge(daysRented: Int) -> Double {
        return price?.getCharge(daysRented) ?? 0
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return price?.getFrequentRenterPoints(daysRented) ?? 0
    }
}

extension Movie: Equatable {}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    return lhs.title == rhs.title &&
        lhs.price == rhs.price
}

class Movie {
    static let Childrens = 2
    static let Regular = 0;
    static let NewRelease = 1;

    let title: String
    private var priceCode: Int {
        get {
            return price?.getPriceCode() ?? -1
        }
        set(value) {
            switch value {
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
    }
    private var price: Price?

    init(title: String, priceCode: Int) {
        self.title = title
        self.priceCode = priceCode
    }

    func getCharge(daysRented: Int) -> Double {
        return price?.getCharge(daysRented) ?? 0
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

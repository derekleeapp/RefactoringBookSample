protocol Movie {
    var title: String { get }

    func getCharge(daysRented: Int) -> Double
    func getFrequentRenterPoints(daysRented: Int) -> Int
}

class StandardMovie: Movie {
    // MARK: - Properties
    let title: String
    private var price: Price

    // MARK: - Initialization
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

    // MARK: - Public Methods
    func getCharge(daysRented: Int) -> Double {
        return price.getCharge(daysRented)
    }

    func getFrequentRenterPoints(daysRented: Int) -> Int {
        return price.getFrequentRenterPoints(daysRented)
    }
}

extension StandardMovie: Equatable {}

func ==(lhs: StandardMovie, rhs: StandardMovie) -> Bool {
    return lhs.title == rhs.title
}

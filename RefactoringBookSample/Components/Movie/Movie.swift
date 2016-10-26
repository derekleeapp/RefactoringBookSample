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
}

extension Movie: Equatable {}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    return lhs.title == rhs.title &&
        lhs.priceCode == rhs.priceCode
}

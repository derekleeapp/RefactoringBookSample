class Movie {
    static let Childrens = 2
    static let Regular = 0;
    static let NewRelease = 1;

    private let title: String
    private var priceCode: Int

    init(title: String, priceCode: Int) {
        self.title = title
        self.priceCode = priceCode
    }
}

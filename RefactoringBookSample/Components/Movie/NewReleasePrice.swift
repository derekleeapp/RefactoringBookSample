struct NewReleasePrice: Price {
    func getPriceCode() -> Int {
        return Movie.NewRelease
    }
}

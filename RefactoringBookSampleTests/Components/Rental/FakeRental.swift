@testable import RefactoringBookSample

class FakeRental: Rental {
    let movie: Movie

    init(movie: Movie) {
        self.movie = movie
    }

    var getCharge_returnValue: Double = 0.0
    func getCharge() -> Double {
        return getCharge_returnValue
    }

    var getFrequentRenterPoints_returnValue: Int = 0
    func getFrequentRenterPoints() -> Int {
        return getFrequentRenterPoints_returnValue
    }
}

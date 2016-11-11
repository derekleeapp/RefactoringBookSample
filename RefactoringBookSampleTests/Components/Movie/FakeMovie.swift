@testable import RefactoringBookSample

class FakeMovie: Movie {
    let title: String

    init(title: String) {
        self.title = title
    }

    private(set) var getCharge_arg: Int = -1
    func getCharge(daysRented: Int) -> Double {
        getCharge_arg = daysRented
        return 0.0
    }

    private(set) var getFrequentRenterPoints_arg: Int = -1
    func getFrequentRenterPoints(daysRented: Int) -> Int {
        getFrequentRenterPoints_arg = daysRented
        return 0
    }
}

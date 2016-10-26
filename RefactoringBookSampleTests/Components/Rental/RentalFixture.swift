@testable import RefactoringBookSample

struct RentalFixture {
    static func NewRelease(days daysRented: Int) -> Rental {
        return Rental(
            movie: MovieFixture.NewRelease(),
            daysRented: daysRented
        )
    }

    static func Regular(days daysRented: Int) -> Rental {
        return Rental(
            movie: MovieFixture.Regular(),
            daysRented: daysRented
        )
    }

    static func Childrens(days daysRented: Int) -> Rental {
        return Rental(
            movie: MovieFixture.Childrens(),
            daysRented: daysRented
        )
    }
}

@testable import RefactoringBookSample

struct RentalFixture {
    static func NewRelease(days daysRented: Int) -> StandardRental {
        return StandardRental(
            movie: MovieFixture.NewRelease(),
            daysRented: daysRented
        )
    }

    static func Regular(days daysRented: Int) -> StandardRental {
        return StandardRental(
            movie: MovieFixture.Regular(),
            daysRented: daysRented
        )
    }

    static func Childrens(days daysRented: Int) -> StandardRental {
        return StandardRental(
            movie: MovieFixture.Childrens(),
            daysRented: daysRented
        )
    }
}

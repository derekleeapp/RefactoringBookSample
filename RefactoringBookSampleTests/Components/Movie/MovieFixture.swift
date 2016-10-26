@testable import RefactoringBookSample

struct MovieFixture {

    static func NewRelease() -> Movie {
        return Movie(
            title: "Hunger Games",
            priceCode: Movie.NewRelease
        )
    }

    static func Regular() -> Movie {
        return Movie(
            title: "Die Hard",
            priceCode: Movie.Regular
        )
    }

    static func Childrens() -> Movie {
        return Movie(
            title: "Minions",
            priceCode: Movie.Childrens
        )
    }

}

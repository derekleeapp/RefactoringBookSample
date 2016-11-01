@testable import RefactoringBookSample

struct MovieFixture {

    static func NewRelease() -> Movie {
        return Movie(
            newReleaseMovieTitle: "Hunger Games"
        )
    }

    static func Regular() -> Movie {
        return Movie(
            regularMovieTitle: "Die Hard"
        )
    }

    static func Childrens() -> Movie {
        return Movie(
            childrensMovieTitle: "Minions"
        )
    }

}

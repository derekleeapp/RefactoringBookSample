@testable import RefactoringBookSample

struct MovieFixture {

    static func NewRelease() -> Movie {
        return StandardMovie(
            newReleaseMovieTitle: "Hunger Games"
        )
    }

    static func Regular() -> Movie {
        return StandardMovie(
            regularMovieTitle: "Die Hard"
        )
    }

    static func Childrens() -> Movie {
        return StandardMovie(
            childrensMovieTitle: "Minions"
        )
    }

}

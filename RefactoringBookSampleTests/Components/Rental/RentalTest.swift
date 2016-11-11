import Quick
import Nimble
@testable import RefactoringBookSample

class StandardRentalTest: QuickSpec {

    override func spec() {

        describe("rental") {
            it("delegates the rental charge to the movie") {
                let fakeMovie = FakeMovie(title: "Title")
                let rental = StandardRental(
                    movie: fakeMovie,
                    daysRented: 3
                )


                rental.getCharge()


                expect(fakeMovie.getCharge_arg).to(equal(3))
            }

            it("delegates the frequent renter points calculation to the movie") {
                let fakeMovie = FakeMovie(title: "Title")
                let rental = StandardRental(
                    movie: fakeMovie,
                    daysRented: 3
                )


                rental.getFrequentRenterPoints()


                expect(fakeMovie.getFrequentRenterPoints_arg).to(equal(3))
            }
        }
    }

}

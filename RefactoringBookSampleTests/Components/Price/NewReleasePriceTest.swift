import Quick
import Nimble
@testable import RefactoringBookSample

class NewReleasePriceTest: QuickSpec {

    override func spec() {
        describe("charges") {
            it("calculates the charge for a single day rental") {
                let newReleasePrice = NewReleasePrice()


                let charge = newReleasePrice.getCharge(1)


                expect(charge).to(equal(3))
            }

            it("calculates the charge for a multiple day rental") {
                let newReleasePrice = NewReleasePrice()


                let charge = newReleasePrice.getCharge(3)


                expect(charge).to(equal(9))
            }
        }

        describe("frequent renter points") {
            it("calculates the frequent renter points for a single day rental") {
                let newReleasePrice = NewReleasePrice()


                let points = newReleasePrice.getFrequentRenterPoints(1)


                expect(points).to(equal(1))
            }

            it("calculates the frequent renter points for a multi-day rental") {
                let newReleasePrice = NewReleasePrice()


                let points = newReleasePrice.getFrequentRenterPoints(3)


                expect(points).to(equal(2))
            }
        }
    }

}

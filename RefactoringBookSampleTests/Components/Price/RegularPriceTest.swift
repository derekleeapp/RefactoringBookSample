import Quick
import Nimble
@testable import RefactoringBookSample

class RegularPriceTest: QuickSpec {

    override func spec() {
        describe("charges") {
            it("calculates the charge for a single day rental") {
                let regularPrice = RegularPrice()


                let charge = regularPrice.getCharge(1)


                expect(charge).to(equal(2))
            }

            it("calculates the charge for a multiple day rental") {
                let regularPrice = RegularPrice()


                let charge = regularPrice.getCharge(3)


                expect(charge).to(equal(3.5))
            }
        }

        describe("frequent renter points") {
            it("calculates the frequent renter points for a single day rental") {
                let regularPrice = RegularPrice()


                let points = regularPrice.getFrequentRenterPoints(1)


                expect(points).to(equal(1))
            }

            it("calculates the frequent renter points for a multi-day rental") {
                let regularPrice = RegularPrice()


                let points = regularPrice.getFrequentRenterPoints(3)


                expect(points).to(equal(1))
            }
        }
    }

}

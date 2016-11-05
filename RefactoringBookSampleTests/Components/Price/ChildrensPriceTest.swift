import Quick
import Nimble
@testable import RefactoringBookSample

class ChildrensPriceTest: QuickSpec {

    override func spec() {
        describe("charges") {
            it("calculates the charge for a single day rental") {
                let childrensPrice = ChildrensPrice()


                let charge = childrensPrice.getCharge(1)


                expect(charge).to(equal(1.5))
            }

            it("calculates the charge for a multiple day rental") {
                let childrensPrice = ChildrensPrice()


                let charge = childrensPrice.getCharge(4)


                expect(charge).to(equal(3))
            }
        }

        describe("frequent renter points") {
            it("calculates the frequent renter points for a single day rental") {
                let childrensPrice = ChildrensPrice()


                let points = childrensPrice.getFrequentRenterPoints(1)


                expect(points).to(equal(1))
            }

            it("calculates the frequent renter points for a multi-day rental") {
                let childrensPrice = ChildrensPrice()


                let points = childrensPrice.getFrequentRenterPoints(3)


                expect(points).to(equal(1))
            }
        }
    }
}

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
    }

}

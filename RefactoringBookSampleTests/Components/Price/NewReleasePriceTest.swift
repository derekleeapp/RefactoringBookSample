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
    }

}

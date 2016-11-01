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
    }
}

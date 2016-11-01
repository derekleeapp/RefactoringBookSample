import Quick
import Nimble
@testable import RefactoringBookSample

class RentalTest: QuickSpec {

    override func spec() {
        describe("charges for a regular movie") {
            it("calculates the charge for a single day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.Regular(),
                    daysRented: 1
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(2))
            }

            it("calculates the charge for a multiple day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.Regular(),
                    daysRented: 3
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(3.5))
            }
        }

        describe("charges for a new release movie") {
            it("calculates the charge for a single day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.NewRelease(),
                    daysRented: 1
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(3))
            }

            it("calculates the charge for a multiple day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.NewRelease(),
                    daysRented: 3
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(9))
            }
        }

        describe("charges for a children's movie") {
            it("calculates the charge for a single day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.Childrens(),
                    daysRented: 1
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(1.5))
            }

            it("calculates the charge for a multiple day rental") {
                let regularRental = Rental(
                    movie: MovieFixture.Childrens(),
                    daysRented: 4
                )


                let charge = regularRental.getCharge()


                expect(charge).to(equal(3))
            }
        }

    }
}

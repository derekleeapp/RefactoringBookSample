import Quick
import Nimble
@testable import RefactoringBookSample

class CustomerTest: QuickSpec {

    override func spec() {
        var customer: Customer!

        beforeEach {
            customer = Customer(name: "John Doe")
        }

        it("initializes a new customer without any rentals") {
            expect(customer.rentals).to(equal([]))
        }

        it("adds a rental to the list of rentals") {
            let newReleaseRental = RentalFixture.NewRelease(days: 1)
            customer.addRental(newReleaseRental)


            let expectedRentals = [newReleaseRental]
            expect(customer.rentals).to(equal(expectedRentals))
        }

        describe("the customer statement") {

            it("indicates when there have been no rentals") {
                let actualStatement = customer.statement()


                let expectedStatement =
                    "Rental Record for John Doe\n" +
                    "Amount owed is 0.0\n" +
                    "You earned 0 frequent renter points"
                expect(actualStatement).to(equal(expectedStatement))
            }

            describe("regular rentals") {
                it("reflects charges and points when rented for one day") {
                    let regularRental = RentalFixture.Regular(days: 1)
                    customer.addRental(regularRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                        "\tDie Hard\t2.0\n" +
                        "Amount owed is 2.0\nYou earned 1 frequent renter points"
                    expect(actualStatement).to(equal(expectedStatement))
                }

                it("reflects charges and points when rented for multiple days") {
                    let regularRental = RentalFixture.Regular(days: 3)
                    customer.addRental(regularRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                        "\tDie Hard\t3.5\n" +
                        "Amount owed is 3.5\nYou earned 1 frequent renter points"
                    expect(actualStatement).to(equal(expectedStatement))
                }
            }

            describe("new release rentals") {
                it("reflects charges and points when rented for one day") {
                    let newReleaseRental = RentalFixture.NewRelease(days: 1)
                    customer.addRental(newReleaseRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                            "\tHunger Games\t3.0\n" +
                    "Amount owed is 3.0\nYou earned 1 frequent renter points"
                    expect(actualStatement).to(equal(expectedStatement))
                }

                it("reflects charges and points when rented for multiple days") {
                    let newReleaseRental = RentalFixture.NewRelease(days: 2)
                    customer.addRental(newReleaseRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                            "\tHunger Games\t6.0\n" +
                    "Amount owed is 6.0\nYou earned 2 frequent renter points"
                    XCTAssertEqual(actualStatement, expectedStatement)
                    expect(actualStatement).to(equal(expectedStatement))
                }
            }

            describe("childrens rentals") {
                it("reflects charges and points when rented for one day") {
                    let childrensRental = RentalFixture.Childrens(days: 1)
                    customer.addRental(childrensRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                            "\tMinions\t1.5\n" +
                    "Amount owed is 1.5\nYou earned 1 frequent renter points"
                    expect(actualStatement).to(equal(expectedStatement))
                }

                it("reflects charges and points when rented for multiple days") {
                    let childrensRental = RentalFixture.Childrens(days: 4)
                    customer.addRental(childrensRental)


                    let actualStatement = customer.statement()


                    let expectedStatement =
                        "Rental Record for John Doe\n" +
                            "\tMinions\t3.0\n" +
                    "Amount owed is 3.0\nYou earned 1 frequent renter points"
                    expect(actualStatement).to(equal(expectedStatement))
                }
            }
        }
    }
}

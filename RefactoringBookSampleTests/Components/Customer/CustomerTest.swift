import XCTest
@testable import RefactoringBookSample

class CustomerTest: XCTestCase {

    func testCustomer_initializesWithoutRentals() {
        let customer = Customer(name: "John Doe")


        XCTAssertEqual(customer.rentals, [])
    }

    func testAddRental_addsARentalToTheList() {
        let customer = Customer(name: "John Doe")


        let newReleaseRental = RentalFixture.NewRelease(days: 1)
        customer.addRental(newReleaseRental)


        let expectedRentals = [newReleaseRental]
        XCTAssertEqual(customer.rentals, expectedRentals)
    }

    func testStatement_noRentals() {
        let customer = Customer(name: "John Doe")


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "Amount owed is 0.0\n" +
            "You earned 0 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_regular_oneDayRental() {
        let customer = Customer(name: "John Doe")

        let regularRental = RentalFixture.Regular(days: 1)
        customer.addRental(regularRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tDie Hard\t2.0\n" +
            "Amount owed is 2.0\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

}

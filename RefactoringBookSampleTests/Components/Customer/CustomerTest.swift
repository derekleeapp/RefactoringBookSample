import XCTest
@testable import RefactoringBookSample

class CustomerTest: XCTestCase {

    var customer: Customer!

    override func setUp() {
        customer = Customer(name: "John Doe")
    }

    func testCustomer_initializesWithoutRentals() {
        XCTAssertEqual(customer.rentals, [])
    }

    func testAddRental_addsARentalToTheList() {
        let newReleaseRental = RentalFixture.NewRelease(days: 1)
        customer.addRental(newReleaseRental)


        let expectedRentals = [newReleaseRental]
        XCTAssertEqual(customer.rentals, expectedRentals)
    }

    func testStatement_noRentals() {
        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "Amount owed is 0.0\n" +
            "You earned 0 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_regular_oneDayRental() {
        let regularRental = RentalFixture.Regular(days: 1)
        customer.addRental(regularRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tDie Hard\t2.0\n" +
            "Amount owed is 2.0\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_regular_multiDayRental() {
        let regularRental = RentalFixture.Regular(days: 3)
        customer.addRental(regularRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tDie Hard\t3.5\n" +
            "Amount owed is 3.5\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_newRelease_oneDayRental() {
        let newReleaseRental = RentalFixture.NewRelease(days: 1)
        customer.addRental(newReleaseRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tHunger Games\t3.0\n" +
            "Amount owed is 3.0\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_newRelease_multiDayRental() {
        let newReleaseRental = RentalFixture.NewRelease(days: 2)
        customer.addRental(newReleaseRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
                "\tHunger Games\t6.0\n" +
        "Amount owed is 6.0\nYou earned 2 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_childrens_oneDayRental() {
        let childrensRental = RentalFixture.Childrens(days: 1)
        customer.addRental(childrensRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tMinions\t1.5\n" +
            "Amount owed is 1.5\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }

    func testStatement_childrens_multiDayRental() {
        let childrensRental = RentalFixture.Childrens(days: 4)
        customer.addRental(childrensRental)


        let actualStatement = customer.statement()


        let expectedStatement =
            "Rental Record for John Doe\n" +
            "\tMinions\t3.0\n" +
            "Amount owed is 3.0\nYou earned 1 frequent renter points"
        XCTAssertEqual(actualStatement, expectedStatement)
    }
}

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

}

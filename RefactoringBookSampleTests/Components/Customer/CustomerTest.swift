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
            expect(customer.rentals.count).to(equal(0))
        }

        it("adds a rental to the list of rentals") {
            let newReleaseRental = RentalFixture.NewRelease(days: 1)
            customer.addRental(newReleaseRental)


            let expectedRentals = [newReleaseRental]
            expect(customer.rentals.count).to(equal(expectedRentals.count))
            expect(customer.rentals.first as? StandardRental).to(equal(expectedRentals.first))
        }

        describe("the customer statement") {

            beforeEach {
                let fakeRental = FakeRental(movie: MovieFixture.Regular())
                fakeRental.getCharge_returnValue = 10.0
                fakeRental.getFrequentRenterPoints_returnValue = 1
                customer.addRental(fakeRental)
            }

            it("renders the text only statement") {
                let actualStatement = customer.statement()


                let expectedStatement =
                    "Rental Record for John Doe\n" +
                    "\tDie Hard\t10.0\n" +
                    "Amount owed is 10.0\nYou earned 1 frequent renter points"
                expect(actualStatement).to(equal(expectedStatement))
            }

            it("renders the HTML statement") {
                let actualStatement = customer.htmlStatement()


                let expectedStatement =
                    "<H1>Rentals for <EM>John Doe</EM></H1><P>\n" +
                    "Die Hard: 10.0<BR>\n" +
                    "<P>You owe <EM>10.0</EM><P>\n" +
                    "On this rental you earned <EM>1</EM> frequent renter points<P>"
                expect(actualStatement).to(equal(expectedStatement))
            }
        }
    }
}

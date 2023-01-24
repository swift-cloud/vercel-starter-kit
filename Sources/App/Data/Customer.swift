struct Customer: Decodable, Identifiable {
    let customerNumber: Int
    let customerName: String
    let phone: String
    let city: String
    let country: String

    var id: Int {
        customerNumber
    }
}

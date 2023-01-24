import VercelUI

struct CustomerPage: View {

    let customer: Customer

    var body: some View {
        MainLayout(title: customer.customerName, subtitle: "\(customer.city), \(customer.country)") {
            Link("All customers", destination: .path("/"))
                .font(.body)
                .foregroundColor(.blue)
        }
    }
}

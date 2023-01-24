import VercelUI

struct IndexPage: View {

    let customers: [Customer]
    
    var body: some View {
        MainLayout(title: "Hello, London", subtitle: "Welcome to Server Side Swift Conf 2022") {
            Text("Directory")
                .font(.headline)

            ForEach(customers) { customer in
                Link(destination: .path("/customer/\(customer.customerNumber)")) {
                    Text(customer.customerName)
                }
                .font(.body)
                .foregroundColor(.blue)
                .padding([.top, .bottom], 12)
            }
        }
    }
}

import VercelUI

struct IndexPage: View {

    @Environment(\.request) var req

    var body: some View {
        VStack {
            Text("Hello, Swift")
                .font(.title)

            Text("This is a server rendered SwiftUI website")
                .font(.subheadline)

            Text("Your ip address \(req.clientIPAddress)")
        }
    }
}

@main
struct App: ExpressHandler {

    static let router = Router()
        .get("/", IndexPage())
}

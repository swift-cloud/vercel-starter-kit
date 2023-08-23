import Vapor
import VercelVapor

@main
struct App: VaporHandler {

    static let app: Application = {
        let app = Application()

        app.get { _ in
            "Hello, Vapor"
        }

        return app
    }()
}

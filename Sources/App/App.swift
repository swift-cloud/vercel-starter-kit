import Vapor
import VercelVapor

@main
struct App: VaporHandler {

    static func configure() async throws -> Application {
        let app = Application()

        app.get { _ in
            "Hello, Vapor"
        }

        return app
    }
}

import VercelVapor

@main
struct App: VaporHandler {

    static func configure(app: Application) async throws {
        app.get { _ in
            "Hello, Vapor"
        }
    }
}

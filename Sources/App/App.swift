import Vapor
import VercelVapor

@main
struct App: VaporHandler {

    static let app: Application = {
        // Create application
        let app = Application()

        // Register basic route
        app.get { req in
            return Response(body: "Hello, Vapor")
        }

        // Register vercel handler
        app.servers.use(.vercel)

        // Start the app
        try? app.start()

        return app
    }()
}

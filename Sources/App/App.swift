import Vercel

@main
struct App: RequestHandler {

    func onRequest(_ req: Request, context: Context) async throws -> Response {
        let greeting = EdgeConfig.default["greeting", default: "World"]
        return .init(statusCode: .ok, body: "Hello, \(greeting)")
    }
}

import Vercel

@main
struct App: RequestHandler {

    func onRequest(_ req: Request, context: Context) async throws -> Response {
        let greeting = EdgeConfig.default["greeting", default: "Swift"]
        return .status(.ok).send("Hello, \(greeting)")
    }
}

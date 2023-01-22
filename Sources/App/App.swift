import Vercel

@main
struct App: RequestHandler {

    func onRequest(_ req: Request, context: Context) async throws -> Response {
        let greeting = EdgeConfig.default.get("greeting").string ?? "World"
        return .status(.ok).send("Hello, \(greeting)")
    }
}

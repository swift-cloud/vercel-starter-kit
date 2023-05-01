import Vercel
import Upstash

let kv = RedisClient(
    hostname: Vercel.Environment["KV_REST_API_URL"]!,
    token: Vercel.Environment["KV_REST_API_TOKEN"]!
)

@main
struct App: RequestHandler {

    func onRequest(_ req: Request, context: Context) async throws -> Response {
        let visits: Int = try await kv.exec("incr", ["visits"])
        return .status(.ok).send("Hello, Swift. Visits \(visits)")
    }
}

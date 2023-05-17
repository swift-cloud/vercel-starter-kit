import Vercel

@main
struct App: ExpressHandler {

    static let router = Router()
        .get("/") { req, res in
            let host = req.header(.host) ?? "(unknown)"
            return res
                .header(.cacheControl, "private, max-age=0")
                .send("Hello, Vercel. Host: \(host)")
        }
        .get("/cache-control") { _, res in
            res
                .header(.cacheControl, "public, max-age=60")
                .send("Hello, Vercel")
        }
        .get("/cdn-cache-control") { _, res in
            res
                .header(.cacheControl, "private, max-age=0")
                .header(.cdnCacheControl, "public, max-age=60")
                .send("Hello, Vercel")
        }
        .get("/vercel-cdn-cache-control") { _, res in
            res
                .header(.cacheControl, "private, max-age=0")
                .header(.cdnCacheControl, "private, max-age=0")
                .header(.vercelCdnCacheControl, "public, max-age=60")
                .send("Hello, Vercel")
        }
}

import Vercel

@main
struct App: ExpressHandler {

    static let router = Router()
        .get("/") { req, res in
            res.status(.ok).send("Hello, Swift")
        }
        .get("/json") { req, res in
            try res.status(.ok).send(["name": "Andrew"])
        }
        .get("/:name") { req, res in
            res.send("Hello, " + req.pathParams["name"]!)
        }
}

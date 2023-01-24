import PlanetScale
import VercelUI

let client = buildPlanetScaleClient()

@main
struct App: ExpressHandler {

    static let router = Router()
        .get("/", cachePolicy: .maxAge(10)) { req, _ in
            let limit = req.searchParams["limit", default: "100"]
            let sql = "select * from customers limit \(limit)"
            let rows: [Customer] = try await client.execute(sql).decode()
            return IndexPage(customers: rows)
        }
        .get("/customer/:number", cachePolicy: .maxAge(10)) { req, _ in
            let number = req.pathParams["number"]!
            let sql = "select * from customers where customerNumber = \(number)"
            let rows: [Customer] = try await client.execute(sql).decode()
            return CustomerPage(customer: rows[0])
        }
}

func buildPlanetScaleClient() -> PlanetScaleClient {
    let dict = EdgeConfig.default
    let username = dict["db_username"].string!
    let password = dict["db_password"].string!
    return PlanetScaleClient(username: username, password: password)
}

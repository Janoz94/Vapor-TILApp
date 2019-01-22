import Vapor
import Imperial
import Authentication
import Foundation

struct ImperialController: RouteCollection {
    func boot(router: Router) throws {
    }
    
    func processGoogleLogin(request: Request, token: String) throws -> Future<ResponseEncodable> {
            return request.future(request.redirect(to: "/"))
    }
}

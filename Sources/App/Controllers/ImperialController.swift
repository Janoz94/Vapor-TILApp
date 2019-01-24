import Vapor
import Imperial
import Authentication



struct ImperialController: RouteCollection {
    func boot(router: Router) throws {
        guard let callbackURL = Environment.get("GOOGLE_CALLBACK_URL") else {
            fatalError("Callback URL not set")
        }
        try router.oAuth(from: Google.self, authenticate: "login-google", callback: callbackURL, scope: ["profile", "email"], completion: processGoogleLogin)
    }
    
    func processGoogleLogin(request: Request, token: String) throws -> Future<ResponseEncodable> {
            return request.future(request.redirect(to: "/"))
    }
}

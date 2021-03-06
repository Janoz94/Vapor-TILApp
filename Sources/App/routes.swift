import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    // Example of configuring a controller
    let acronymsController = AcronymsController()
    let usersController = UsersController()
    let categoriesController = CategoriesController()
    let websiteController = WebsiteController()
    let imperialController = ImperialController()
    
    try router.register(collection: acronymsController)
    try router.register(collection: usersController)
    try router.register(collection: categoriesController)
    try router.register(collection: websiteController)
    try router.register(collection: imperialController)    
}

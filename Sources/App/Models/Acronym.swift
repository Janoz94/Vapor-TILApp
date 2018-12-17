import Vapor
import FluentPostgreSQL

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    var userID: User.ID
    
    init(short: String, long: String, userID: User.ID) {
        self.short = short
        self.long = long
        self.userID = userID
    }
}


extension Acronym: Model {
    typealias Database = PostgreSQLDatabase
    typealias ID = Int
    public static var idKey: IDKey = \Acronym.id
}

extension Acronym: Migration {}

extension Acronym: Content {}

extension Acronym: Parameter {}

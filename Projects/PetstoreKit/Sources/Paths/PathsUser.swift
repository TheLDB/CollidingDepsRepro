// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var user: User {
        User(path: "/user")
    }

    public struct User {
        /// Path: `/user`
        public let path: String

        /// Create user
        ///
        /// This can only be done by the logged in user.
        public func post(_ body: PetstoreKit.User? = nil) -> Request<PetstoreKit.User> {
            Request(path: path, method: "POST", body: body, id: "createUser")
        }
    }
}

// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var pet: Pet {
        Pet(path: "/pet")
    }

    public struct Pet {
        /// Path: `/pet`
        public let path: String

        /// Add a new pet to the store
        public func post(_ body: PetstoreKit.Pet) -> Request<PetstoreKit.Pet> {
            Request(path: path, method: "POST", body: body, id: "addPet")
        }

        /// Update an existing pet
        ///
        /// Update an existing pet by Id
        public func put(_ body: PetstoreKit.Pet) -> Request<PetstoreKit.Pet> {
            Request(path: path, method: "PUT", body: body, id: "updatePet")
        }
    }
}

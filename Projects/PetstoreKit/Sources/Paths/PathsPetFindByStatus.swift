// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Pet {
    public var findByStatus: FindByStatus {
        FindByStatus(path: path + "/findByStatus")
    }

    public struct FindByStatus {
        /// Path: `/pet/findByStatus`
        public let path: String

        /// Finds Pets by status
        ///
        /// Multiple status values can be provided with comma separated strings
        public func get(status: Status? = nil) -> Request<[PetstoreKit.Pet]> {
            Request(path: path, method: "GET", query: makeGetQuery(status), id: "findPetsByStatus")
        }

        private func makeGetQuery(_ status: Status?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(status, forKey: "status")
            return encoder.items
        }

        public enum Status: String, Codable, CaseIterable {
            case available
            case pending
            case sold
        }
    }
}

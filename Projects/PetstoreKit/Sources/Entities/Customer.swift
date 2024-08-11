// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Customer: Codable {
    /// Example: 100000
    public var id: Int64?
    /// Example: "fehguy"
    public var username: String?
    public var address: [Address]?

    public init(id: Int64? = nil, username: String? = nil, address: [Address]? = nil) {
        self.id = id
        self.username = username
        self.address = address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.username = try values.decodeIfPresent(String.self, forKey: "username")
        self.address = try values.decodeIfPresent([Address].self, forKey: "address")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(username, forKey: "username")
        try values.encodeIfPresent(address, forKey: "address")
    }
}

import Foundation

struct Address: Codable {
    var province: String
    var city: String
}

struct Student: Codable {
    var name: String
    var age: Int
    var address: Address

    enum CodingKeys: String, CodingKey {
        case name
        case age
        case address = "addr"
    }
}

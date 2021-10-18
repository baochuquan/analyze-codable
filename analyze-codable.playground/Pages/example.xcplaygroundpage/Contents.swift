import UIKit

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

// encode
print("============= Encode =============")
let address = Address(province: "Zhejiang", city: "Huzhou")
let student = Student(name: "baochuquan", age: 18, address: address)
let encoder = JSONEncoder()
guard
    let data = try? encoder.encode(student),
    let encodedString = String(data: data, encoding: .utf8)
else {
    fatalError()
}
print(encodedString)
// 输出：
// {"name":"baochuquan","age":18,"addr":{"province":"Zhejiang","city":"Huzhou"}}

// decode
print("============= Decode =============")
let jsonString = "{\"name\":\"baochuquan\",\"age\":18,\"addr\":{\"province\":\"Zhejiang\",\"city\":\"Huzhou\"}}"
let decoder = JSONDecoder()
guard
    let jsonData = jsonString.data(using: .utf8),
    let model = try? decoder.decode(Student.self, from: jsonData)
else {
    fatalError()
}
print(model)
// 输出：
// Student(name: "baochuquan", age: 18, address: __lldb_expr_15.Address(province: "Zhejiang", city: "Huzhou"))

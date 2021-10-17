//
//  Encodable+Extension.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/27.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

import Foundation



//===----------------------------------------------------------------------===//
// Primitive and RawRepresentable Extensions
//===----------------------------------------------------------------------===//
extension Bool: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Bool.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Bool, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Bool`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Bool, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Bool`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension String: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(String.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == String, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `String`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == String, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `String`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Double: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Double.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Double, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Double`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Double, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Double`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Float: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Float.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Float, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Float`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Float, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Float`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

#if !((os(macOS) || targetEnvironment(macCatalyst)) && arch(x86_64))
@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension Float16: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let floatValue = try Float(from: decoder)
    self = Float16(floatValue)
    if isInfinite && floatValue.isFinite {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Parsed JSON number \(floatValue) does not fit in Float16."
        )
      )
    }
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    try Float(self).encode(to: encoder)
  }
}
#endif

extension Int: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Int.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Int, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Int`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Int, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Int`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Int8: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Int8.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Int8, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Int8`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Int8, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Int8`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Int16: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Int16.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Int16, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Int16`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Int16, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Int16`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Int32: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Int32.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Int32, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Int32`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Int32, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Int32`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension Int64: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(Int64.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == Int64, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `Int64`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == Int64, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `Int64`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension UInt: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(UInt.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == UInt, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `UInt`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == UInt, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `UInt`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension UInt8: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(UInt8.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == UInt8, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `UInt8`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}


extension RawRepresentable where RawValue == UInt8, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `UInt8`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension UInt16: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(UInt16.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == UInt16, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `UInt16`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == UInt16, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `UInt16`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension UInt32: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(UInt32.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == UInt32, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `UInt32`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == UInt32, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `UInt32`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

extension UInt64: Codable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self = try decoder.singleValueContainer().decode(UInt64.self)
  }

  /// Encodes this value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self)
  }
}

extension RawRepresentable where RawValue == UInt64, Self: Encodable {
  /// Encodes this value into the given encoder, when the type's `RawValue`
  /// is `UInt64`.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(self.rawValue)
  }
}

extension RawRepresentable where RawValue == UInt64, Self: Decodable {
  /// Creates a new instance by decoding from the given decoder, when the
  /// type's `RawValue` is `UInt64`.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let decoded = try decoder.singleValueContainer().decode(RawValue.self)
    guard let value = Self(rawValue: decoded) else {
      throw DecodingError.dataCorrupted(
        DecodingError.Context(
          codingPath: decoder.codingPath,
          debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"
        )
      )
    }

    self = value
  }
}

//===----------------------------------------------------------------------===//
// Optional/Collection Type Conformances
//===----------------------------------------------------------------------===//
extension Optional: Encodable where Wrapped: Encodable {
  /// Encodes this optional value into the given encoder.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .none: try container.encodeNil()
    case .some(let wrapped): try container.encode(wrapped)
    }
  }
}

extension Optional: Decodable where Wrapped: Decodable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if container.decodeNil() {
      self = .none
    }  else {
      let element = try container.decode(Wrapped.self)
      self = .some(element)
    }
  }
}

extension Array: Encodable where Element: Encodable {
  /// Encodes the elements of this array into the given encoder in an unkeyed
  /// container.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.unkeyedContainer()
    for element in self {
      try container.encode(element)
    }
  }
}

extension Array: Decodable where Element: Decodable {
  /// Creates a new array by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self.init()

    var container = try decoder.unkeyedContainer()
    while !container.isAtEnd {
      let element = try container.decode(Element.self)
      self.append(element)
    }
  }
}

extension ContiguousArray: Encodable where Element: Encodable {
  /// Encodes the elements of this contiguous array into the given encoder
  /// in an unkeyed container.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.unkeyedContainer()
    for element in self {
      try container.encode(element)
    }
  }
}

extension ContiguousArray: Decodable where Element: Decodable {
  /// Creates a new contiguous array by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self.init()

    var container = try decoder.unkeyedContainer()
    while !container.isAtEnd {
      let element = try container.decode(Element.self)
      self.append(element)
    }
  }
}

extension Set: Encodable where Element: Encodable {
  /// Encodes the elements of this set into the given encoder in an unkeyed
  /// container.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    var container = encoder.unkeyedContainer()
    for element in self {
      try container.encode(element)
    }
  }
}

extension Set: Decodable where Element: Decodable {
  /// Creates a new set by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self.init()

    var container = try decoder.unkeyedContainer()
    while !container.isAtEnd {
      let element = try container.decode(Element.self)
      self.insert(element)
    }
  }
}

/// A wrapper for dictionary keys which are Strings or Ints.
internal struct _DictionaryCodingKey: CodingKey {
  internal let stringValue: String
  internal let intValue: Int?

  internal init?(stringValue: String) {
    self.stringValue = stringValue
    self.intValue = Int(stringValue)
  }

  internal init?(intValue: Int) {
    self.stringValue = "\(intValue)"
    self.intValue = intValue
  }
}

extension Dictionary: Encodable where Key: Encodable, Value: Encodable {
  /// Encodes the contents of this dictionary into the given encoder.
  ///
  /// If the dictionary uses `String` or `Int` keys, the contents are encoded
  /// in a keyed container. Otherwise, the contents are encoded as alternating
  /// key-value pairs in an unkeyed container.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  public func encode(to encoder: Encoder) throws {
    if Key.self == String.self {
      // Since the keys are already Strings, we can use them as keys directly.
      var container = encoder.container(keyedBy: _DictionaryCodingKey.self)
      for (key, value) in self {
        let codingKey = _DictionaryCodingKey(stringValue: key as! String)!
        try container.encode(value, forKey: codingKey)
      }
    } else if Key.self == Int.self {
      // Since the keys are already Ints, we can use them as keys directly.
      var container = encoder.container(keyedBy: _DictionaryCodingKey.self)
      for (key, value) in self {
        let codingKey = _DictionaryCodingKey(intValue: key as! Int)!
        try container.encode(value, forKey: codingKey)
      }
    } else {
      // Keys are Encodable but not Strings or Ints, so we cannot arbitrarily
      // convert to keys. We can encode as an array of alternating key-value
      // pairs, though.
      var container = encoder.unkeyedContainer()
      for (key, value) in self {
        try container.encode(key)
        try container.encode(value)
      }
    }
  }
}

extension Dictionary: Decodable where Key: Decodable, Value: Decodable {
  /// Creates a new dictionary by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  public init(from decoder: Decoder) throws {
    self.init()

    if Key.self == String.self {
      // The keys are Strings, so we should be able to expect a keyed container.
      let container = try decoder.container(keyedBy: _DictionaryCodingKey.self)
      for key in container.allKeys {
        let value = try container.decode(Value.self, forKey: key)
        self[key.stringValue as! Key] = value
      }
    } else if Key.self == Int.self {
      // The keys are Ints, so we should be able to expect a keyed container.
      let container = try decoder.container(keyedBy: _DictionaryCodingKey.self)
      for key in container.allKeys {
        guard key.intValue != nil else {
          // We provide stringValues for Int keys; if an encoder chooses not to
          // use the actual intValues, we've encoded string keys.
          // So on init, _DictionaryCodingKey tries to parse string keys as
          // Ints. If that succeeds, then we would have had an intValue here.
          // We don't, so this isn't a valid Int key.
          var codingPath = decoder.codingPath
          codingPath.append(key)
          throw DecodingError.typeMismatch(
            Int.self,
            DecodingError.Context(
              codingPath: codingPath,
              debugDescription: "Expected Int key but found String key instead."
            )
          )
        }

        let value = try container.decode(Value.self, forKey: key)
        self[key.intValue! as! Key] = value
      }
    } else {
      // We should have encoded as an array of alternating key-value pairs.
      var container = try decoder.unkeyedContainer()

      // We're expecting to get pairs. If the container has a known count, it
      // had better be even; no point in doing work if not.
      if let count = container.count {
        guard count % 2 == 0 else {
          throw DecodingError.dataCorrupted(
            DecodingError.Context(
              codingPath: decoder.codingPath,
              debugDescription: "Expected collection of key-value pairs; encountered odd-length array instead."
            )
          )
        }
      }

      while !container.isAtEnd {
        let key = try container.decode(Key.self)

        guard !container.isAtEnd else {
          throw DecodingError.dataCorrupted(
            DecodingError.Context(
              codingPath: decoder.codingPath,
              debugDescription: "Unkeyed container reached end before value in key-value pair."
            )
          )
        }

        let value = try container.decode(Value.self)
        self[key] = value
      }
    }
  }
}

//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//
//===----------------------------------------------------------------------===//
// Codable
//===----------------------------------------------------------------------===//
/// A type that can encode itself to an external representation.
public protocol Encodable {
  /// Encodes this value into the given encoder.
  ///
  /// If the value fails to encode anything, `encoder` will encode an empty
  /// keyed container in its place.
  ///
  /// This function throws an error if any values are invalid for the given
  /// encoder's format.
  ///
  /// - Parameter encoder: The encoder to write data to.
  func encode(to encoder: Encoder) throws
}

/// A type that can decode itself from an external representation.
public protocol Decodable {
  /// Creates a new instance by decoding from the given decoder.
  ///
  /// This initializer throws an error if reading from the decoder fails, or
  /// if the data read is corrupted or otherwise invalid.
  ///
  /// - Parameter decoder: The decoder to read data from.
  init(from decoder: Decoder) throws
}

/// A type that can convert itself into and out of an external representation.
///
/// `Codable` is a type alias for the `Encodable` and `Decodable` protocols.
/// When you use `Codable` as a type or a generic constraint, it matches
/// any type that conforms to both protocols.
public typealias Codable = Encodable & Decodable

//===----------------------------------------------------------------------===//
// CodingKey
//===----------------------------------------------------------------------===//
/// A type that can be used as a key for encoding and decoding.
public protocol CodingKey: ConcurrentValue,
                           CustomStringConvertible,
                           CustomDebugStringConvertible {
  /// The string to use in a named collection (e.g. a string-keyed dictionary).
  var stringValue: String { get }

  /// Creates a new instance from the given string.
  ///
  /// If the string passed as `stringValue` does not correspond to any instance
  /// of this type, the result is `nil`.
  ///
  /// - parameter stringValue: The string value of the desired key.
  init?(stringValue: String)

  /// The value to use in an integer-indexed collection (e.g. an int-keyed
  /// dictionary).
  var intValue: Int? { get }

  /// Creates a new instance from the specified integer.
  ///
  /// If the value passed as `intValue` does not correspond to any instance of
  /// this type, the result is `nil`.
  ///
  /// - parameter intValue: The integer value of the desired key.
  init?(intValue: Int)
}

extension CodingKey {
  /// A textual representation of this key.
  public var description: String {
    let intValue = self.intValue?.description ?? "nil"
    return "\(type(of: self))(stringValue: \"\(stringValue)\", intValue: \(intValue))"
  }

  /// A textual representation of this key, suitable for debugging.
  public var debugDescription: String {
    return description
  }
}


//===----------------------------------------------------------------------===//
// User Info
//===----------------------------------------------------------------------===//
/// A user-defined key for providing context during encoding and decoding.
public struct CodingUserInfoKey: RawRepresentable, Equatable, Hashable, ConcurrentValue {
  public typealias RawValue = String

  /// The key's string value.
  public let rawValue: String

  /// Creates a new instance with the given raw value.
  ///
  /// - parameter rawValue: The value of the key.
  public init?(rawValue: String) {
    self.rawValue = rawValue
  }

  /// Returns a Boolean value indicating whether the given keys are equal.
  ///
  /// - parameter lhs: The key to compare against.
  /// - parameter rhs: The key to compare with.
  public static func ==(
    lhs: CodingUserInfoKey,
    rhs: CodingUserInfoKey
  ) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }

  /// The key's hash value.
  public var hashValue: Int {
    return self.rawValue.hashValue
  }

  /// Hashes the essential components of this value by feeding them into the
  /// given hasher.
  ///
  /// - Parameter hasher: The hasher to use when combining the components
  ///   of this instance.
  public func hash(into hasher: inout Hasher) {
    hasher.combine(self.rawValue)
  }
}


// The following extensions allow for easier error construction.
internal struct _GenericIndexKey: CodingKey, ConcurrentValue {
    internal var stringValue: String
    internal var intValue: Int?

  internal init?(stringValue: String) {
    return nil
  }

  internal init?(intValue: Int) {
    self.stringValue = "Index \(intValue)"
    self.intValue = intValue
  }
}

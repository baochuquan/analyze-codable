//
//  KeyedEncodingContainer.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/27.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

// MARK: - KeyedEncodingContainerProtocol

//===----------------------------------------------------------------------===//
// Keyed Encoding Containers
//===----------------------------------------------------------------------===//
/// A type that provides a view into an encoder's storage and is used to hold
/// the encoded properties of an encodable type in a keyed manner.
///
/// Encoders should provide types conforming to
/// `KeyedEncodingContainerProtocol` for their format.
public protocol KeyedEncodingContainerProtocol {
  associatedtype Key: CodingKey

  /// The path of coding keys taken to get to this point in encoding.
  var codingPath: [CodingKey] { get }

  /// Encodes a null value for the given key.
  ///
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if a null value is invalid in the
  ///   current context for this format.
  mutating func encodeNil(forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Bool, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: String, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Double, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Float, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Int, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Int8, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Int16, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Int32, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: Int64, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: UInt, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: UInt8, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: UInt16, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: UInt32, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode(_ value: UInt64, forKey key: Key) throws

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encode<T: Encodable>(_ value: T, forKey key: Key) throws

  /// Encodes a reference to the given object only if it is encoded
  /// unconditionally elsewhere in the payload (previously, or in the future).
  ///
  /// For encoders which don't support this feature, the default implementation
  /// encodes the given object unconditionally.
  ///
  /// - parameter object: The object to encode.
  /// - parameter key: The key to associate the object with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeConditional<T: AnyObject & Encodable>(
    _ object: T,
    forKey key: Key
  ) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Bool?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: String?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Double?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Float?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Int?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Int8?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Int16?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Int32?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: Int64?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: UInt?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  mutating func encodeIfPresent<T: Encodable>(
    _ value: T?,
    forKey key: Key
  ) throws

  /// Stores a keyed encoding container for the given key and returns it.
  ///
  /// - parameter keyType: The key type to use for the container.
  /// - parameter key: The key to encode the container for.
  /// - returns: A new keyed encoding container.
  mutating func nestedContainer<NestedKey>(
    keyedBy keyType: NestedKey.Type,
    forKey key: Key
  ) -> KeyedEncodingContainer<NestedKey>

  /// Stores an unkeyed encoding container for the given key and returns it.
  ///
  /// - parameter key: The key to encode the container for.
  /// - returns: A new unkeyed encoding container.
  mutating func nestedUnkeyedContainer(
    forKey key: Key
  ) -> UnkeyedEncodingContainer

  /// Stores a new nested container for the default `super` key and returns a
  /// new encoder instance for encoding `super` into that container.
  ///
  /// Equivalent to calling `superEncoder(forKey:)` with
  /// `Key(stringValue: "super", intValue: 0)`.
  ///
  /// - returns: A new encoder to pass to `super.encode(to:)`.
  mutating func superEncoder() -> Encoder

  /// Stores a new nested container for the given key and returns a new encoder
  /// instance for encoding `super` into that container.
  ///
  /// - parameter key: The key to encode `super` for.
  /// - returns: A new encoder to pass to `super.encode(to:)`.
  mutating func superEncoder(forKey key: Key) -> Encoder
}

// MARK: - KeyedEncodingContainer

// An implementation of _KeyedEncodingContainerBase and
// _KeyedEncodingContainerBox are given at the bottom of this file.
/// A concrete container that provides a view into an encoder's storage, making
/// the encoded properties of an encodable type accessible by keys.
public struct KeyedEncodingContainer<K: CodingKey> :
  KeyedEncodingContainerProtocol
{
  public typealias Key = K

  /// The container for the concrete encoder.
  internal var _box: _KeyedEncodingContainerBase

  /// Creates a new instance with the given container.
  ///
  /// - parameter container: The container to hold.
  public init<Container: KeyedEncodingContainerProtocol>(
    _ container: Container
  ) where Container.Key == Key {
    _box = _KeyedEncodingContainerBox(container)
  }

  /// The path of coding keys taken to get to this point in encoding.
  public var codingPath: [CodingKey] {
    return _box.codingPath
  }

  /// Encodes a null value for the given key.
  ///
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if a null value is invalid in the
  ///   current context for this format.
  public mutating func encodeNil(forKey key: Key) throws {
    try _box.encodeNil(forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Bool, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: String, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Double, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Float, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Int, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Int8, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Int16, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Int32, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: Int64, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: UInt, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: UInt8, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: UInt16, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: UInt32, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode(_ value: UInt64, forKey key: Key) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes the given value for the given key.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encode<T: Encodable>(
    _ value: T,
    forKey key: Key
  ) throws {
    try _box.encode(value, forKey: key)
  }

  /// Encodes a reference to the given object only if it is encoded
  /// unconditionally elsewhere in the payload (previously, or in the future).
  ///
  /// For encoders which don't support this feature, the default implementation
  /// encodes the given object unconditionally.
  ///
  /// - parameter object: The object to encode.
  /// - parameter key: The key to associate the object with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeConditional<T: AnyObject & Encodable>(
    _ object: T,
    forKey key: Key
  ) throws {
    try _box.encodeConditional(object, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Bool?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: String?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Double?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Float?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Int?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Int8?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Int16?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Int32?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: Int64?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: UInt?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: UInt8?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: UInt16?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: UInt32?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent(
    _ value: UInt64?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Encodes the given value for the given key if it is not `nil`.
  ///
  /// - parameter value: The value to encode.
  /// - parameter key: The key to associate the value with.
  /// - throws: `EncodingError.invalidValue` if the given value is invalid in
  ///   the current context for this format.
  public mutating func encodeIfPresent<T: Encodable>(
    _ value: T?,
    forKey key: Key
  ) throws {
    try _box.encodeIfPresent(value, forKey: key)
  }

  /// Stores a keyed encoding container for the given key and returns it.
  ///
  /// - parameter keyType: The key type to use for the container.
  /// - parameter key: The key to encode the container for.
  /// - returns: A new keyed encoding container.
  public mutating func nestedContainer<NestedKey>(
    keyedBy keyType: NestedKey.Type,
    forKey key: Key
  ) -> KeyedEncodingContainer<NestedKey> {
    return _box.nestedContainer(keyedBy: NestedKey.self, forKey: key)
  }

  /// Stores an unkeyed encoding container for the given key and returns it.
  ///
  /// - parameter key: The key to encode the container for.
  /// - returns: A new unkeyed encoding container.
  public mutating func nestedUnkeyedContainer(
    forKey key: Key
  ) -> UnkeyedEncodingContainer {
    return _box.nestedUnkeyedContainer(forKey: key)
  }

  /// Stores a new nested container for the default `super` key and returns a
  /// new encoder instance for encoding `super` into that container.
  ///
  /// Equivalent to calling `superEncoder(forKey:)` with
  /// `Key(stringValue: "super", intValue: 0)`.
  ///
  /// - returns: A new encoder to pass to `super.encode(to:)`.
  public mutating func superEncoder() -> Encoder {
    return _box.superEncoder()
  }

  /// Stores a new nested container for the given key and returns a new encoder
  /// instance for encoding `super` into that container.
  ///
  /// - parameter key: The key to encode `super` for.
  /// - returns: A new encoder to pass to `super.encode(to:)`.
  public mutating func superEncoder(forKey key: Key) -> Encoder {
    return _box.superEncoder(forKey: key)
  }
}

// MARK: - Default KeyedEncodingContainerProtocol

//===----------------------------------------------------------------------===//
// Convenience Default Implementations
//===----------------------------------------------------------------------===//
// Default implementation of encodeConditional(_:forKey:) in terms of
// encode(_:forKey:)
extension KeyedEncodingContainerProtocol {
  public mutating func encodeConditional<T: AnyObject & Encodable>(
    _ object: T,
    forKey key: Key
  ) throws {
    try encode(object, forKey: key)
  }
}

// Default implementation of encodeIfPresent(_:forKey:) in terms of
// encode(_:forKey:)
extension KeyedEncodingContainerProtocol {
  public mutating func encodeIfPresent(
    _ value: Bool?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: String?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Double?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Float?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Int?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Int8?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Int16?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Int32?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: Int64?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: UInt?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: UInt8?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: UInt16?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: UInt32?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent(
    _ value: UInt64?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }

  public mutating func encodeIfPresent<T: Encodable>(
    _ value: T?,
    forKey key: Key
  ) throws {
    guard let value = value else { return }
    try encode(value, forKey: key)
  }
}

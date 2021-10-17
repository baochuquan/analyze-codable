//
//  _KeyedEncodingContainerBase.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/27.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

//===----------------------------------------------------------------------===//
// Keyed Encoding Container Implementations
//===----------------------------------------------------------------------===//
class _KeyedEncodingContainerBase {
  internal init(){}

  deinit {}

  // These must all be given a concrete implementation in _*Box.
  internal var codingPath: [CodingKey] {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeNil<K: CodingKey>(forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Bool, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: String, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Double, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Float, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Int, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Int8, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Int16, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Int32, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: Int64, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: UInt, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: UInt8, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: UInt16, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: UInt32, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<K: CodingKey>(_ value: UInt64, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encode<T: Encodable, K: CodingKey>(_ value: T, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeConditional<T: AnyObject & Encodable, K: CodingKey>(
    _ object: T,
    forKey key: K
  ) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Bool?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: String?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Double?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Float?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Int?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Int8?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Int16?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Int32?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: Int64?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: UInt?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: UInt8?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: UInt16?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: UInt32?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<K: CodingKey>(_ value: UInt64?, forKey key: K) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func encodeIfPresent<T: Encodable, K: CodingKey>(
    _ value: T?,
    forKey key: K
  ) throws {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func nestedContainer<NestedKey, K: CodingKey>(
    keyedBy keyType: NestedKey.Type,
    forKey key: K
  ) -> KeyedEncodingContainer<NestedKey> {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func nestedUnkeyedContainer<K: CodingKey>(
    forKey key: K
  ) -> UnkeyedEncodingContainer {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func superEncoder() -> Encoder {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }

  internal func superEncoder<K: CodingKey>(forKey key: K) -> Encoder {
    fatalError("_KeyedEncodingContainerBase cannot be used directly.")
  }
}

// MARK: - _KeyedEncodingContainerBox

final class _KeyedEncodingContainerBox<
  Concrete: KeyedEncodingContainerProtocol
>: _KeyedEncodingContainerBase {
  typealias Key = Concrete.Key

  internal var concrete: Concrete

  internal init(_ container: Concrete) {
    concrete = container
  }

  override internal var codingPath: [CodingKey] {
    return concrete.codingPath
  }

  override internal func encodeNil<K: CodingKey>(forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeNil(forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Bool, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: String, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Double, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Float, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Int, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Int8, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Int16, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Int32, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: Int64, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: UInt, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: UInt8, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: UInt16, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: UInt32, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<K: CodingKey>(_ value: UInt64, forKey key: K) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encode<T: Encodable, K: CodingKey>(
    _ value: T,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encode(value, forKey: key)
  }

  override internal func encodeConditional<T: AnyObject & Encodable, K: CodingKey>(
    _ object: T,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeConditional(object, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Bool?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: String?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Double?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Float?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Int?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Int8?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Int16?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Int32?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: Int64?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: UInt?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: UInt8?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: UInt16?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: UInt32?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<K: CodingKey>(
    _ value: UInt64?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func encodeIfPresent<T: Encodable, K: CodingKey>(
    _ value: T?,
    forKey key: K
  ) throws {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    try concrete.encodeIfPresent(value, forKey: key)
  }

  override internal func nestedContainer<NestedKey, K: CodingKey>(
    keyedBy keyType: NestedKey.Type,
    forKey key: K
  ) -> KeyedEncodingContainer<NestedKey> {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return concrete.nestedContainer(keyedBy: NestedKey.self, forKey: key)
  }

  override internal func nestedUnkeyedContainer<K: CodingKey>(
    forKey key: K
  ) -> UnkeyedEncodingContainer {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return concrete.nestedUnkeyedContainer(forKey: key)
  }

  override internal func superEncoder() -> Encoder {
    return concrete.superEncoder()
  }

  override internal func superEncoder<K: CodingKey>(forKey key: K) -> Encoder {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return concrete.superEncoder(forKey: key)
  }
}

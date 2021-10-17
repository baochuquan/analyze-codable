//
//  _KeyedDecodingContainerBase.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/27.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

internal class _KeyedDecodingContainerBase {
  internal init(){}

  deinit {}

  internal var codingPath: [CodingKey] {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal var allKeys: [CodingKey] {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func contains<K: CodingKey>(_ key: K) -> Bool {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeNil<K: CodingKey>(forKey key: K) throws -> Bool {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Bool.Type,
    forKey key: K
  ) throws -> Bool {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: String.Type,
    forKey key: K
  ) throws -> String {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Double.Type,
    forKey key: K
  ) throws -> Double {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Float.Type,
    forKey key: K
  ) throws -> Float {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Int.Type,
    forKey key: K
  ) throws -> Int {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Int8.Type,
    forKey key: K
  ) throws -> Int8 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Int16.Type,
    forKey key: K
  ) throws -> Int16 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Int32.Type,
    forKey key: K
  ) throws -> Int32 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: Int64.Type,
    forKey key: K
  ) throws -> Int64 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: UInt.Type,
    forKey key: K
  ) throws -> UInt {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: UInt8.Type,
    forKey key: K
  ) throws -> UInt8 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: UInt16.Type,
    forKey key: K
  ) throws -> UInt16 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: UInt32.Type,
    forKey key: K
  ) throws -> UInt32 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<K: CodingKey>(
    _ type: UInt64.Type,
    forKey key: K
  ) throws -> UInt64 {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decode<T: Decodable, K: CodingKey>(
    _ type: T.Type,
    forKey key: K
  ) throws -> T {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Bool.Type,
    forKey key: K
  ) throws -> Bool? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: String.Type,
    forKey key: K
  ) throws -> String? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Double.Type,
    forKey key: K
  ) throws -> Double? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Float.Type,
    forKey key: K
  ) throws -> Float? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Int.Type,
    forKey key: K
  ) throws -> Int? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Int8.Type,
    forKey key: K
  ) throws -> Int8? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Int16.Type,
    forKey key: K
  ) throws -> Int16? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Int32.Type,
    forKey key: K
  ) throws -> Int32? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: Int64.Type,
    forKey key: K
  ) throws -> Int64? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt.Type,
    forKey key: K
  ) throws -> UInt? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt8.Type,
    forKey key: K
  ) throws -> UInt8? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt16.Type,
    forKey key: K
  ) throws -> UInt16? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt32.Type,
    forKey key: K
  ) throws -> UInt32? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt64.Type,
    forKey key: K
  ) throws -> UInt64? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func decodeIfPresent<T: Decodable, K: CodingKey>(
    _ type: T.Type,
    forKey key: K
  ) throws -> T? {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func nestedContainer<NestedKey, K: CodingKey>(
    keyedBy type: NestedKey.Type,
    forKey key: K
  ) throws -> KeyedDecodingContainer<NestedKey> {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func nestedUnkeyedContainer<K: CodingKey>(
    forKey key: K
  ) throws -> UnkeyedDecodingContainer {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func superDecoder() throws -> Decoder {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }

  internal func superDecoder<K: CodingKey>(forKey key: K) throws -> Decoder {
    fatalError("_KeyedDecodingContainerBase cannot be used directly.")
  }
}

// MARK: - _KeyedDecodingContainerBox

final class _KeyedDecodingContainerBox<
  Concrete: KeyedDecodingContainerProtocol
>: _KeyedDecodingContainerBase {
  typealias Key = Concrete.Key

  internal var concrete: Concrete

  internal init(_ container: Concrete) {
    concrete = container
  }

  override var codingPath: [CodingKey] {
    return concrete.codingPath
  }

  override var allKeys: [CodingKey] {
    return concrete.allKeys
  }

  override internal func contains<K: CodingKey>(_ key: K) -> Bool {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return concrete.contains(key)
  }

  override internal func decodeNil<K: CodingKey>(forKey key: K) throws -> Bool {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeNil(forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Bool.Type,
    forKey key: K
  ) throws -> Bool {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Bool.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: String.Type,
    forKey key: K
  ) throws -> String {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(String.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Double.Type,
    forKey key: K
  ) throws -> Double {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Double.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Float.Type,
    forKey key: K
  ) throws -> Float {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Float.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Int.Type,
    forKey key: K
  ) throws -> Int {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Int.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Int8.Type,
    forKey key: K
  ) throws -> Int8 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Int8.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Int16.Type,
    forKey key: K
  ) throws -> Int16 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Int16.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Int32.Type,
    forKey key: K
  ) throws -> Int32 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Int32.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: Int64.Type,
    forKey key: K
  ) throws -> Int64 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(Int64.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: UInt.Type,
    forKey key: K
  ) throws -> UInt {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(UInt.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: UInt8.Type,
    forKey key: K
  ) throws -> UInt8 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(UInt8.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: UInt16.Type,
    forKey key: K
  ) throws -> UInt16 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(UInt16.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: UInt32.Type,
    forKey key: K
  ) throws -> UInt32 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(UInt32.self, forKey: key)
  }

  override internal func decode<K: CodingKey>(
    _ type: UInt64.Type,
    forKey key: K
  ) throws -> UInt64 {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(UInt64.self, forKey: key)
  }

  override internal func decode<T: Decodable, K: CodingKey>(
    _ type: T.Type,
    forKey key: K
  ) throws -> T {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decode(T.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Bool.Type,
    forKey key: K
  ) throws -> Bool? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Bool.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: String.Type,
    forKey key: K
  ) throws -> String? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(String.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Double.Type,
    forKey key: K
  ) throws -> Double? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Double.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Float.Type,
    forKey key: K
  ) throws -> Float? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Float.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Int.Type,
    forKey key: K
  ) throws -> Int? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Int.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Int8.Type,
    forKey key: K
  ) throws -> Int8? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Int8.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Int16.Type,
    forKey key: K
  ) throws -> Int16? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Int16.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Int32.Type,
    forKey key: K
  ) throws -> Int32? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Int32.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: Int64.Type,
    forKey key: K
  ) throws -> Int64? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(Int64.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt.Type,
    forKey key: K
  ) throws -> UInt? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(UInt.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt8.Type,
    forKey key: K
  ) throws -> UInt8? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(UInt8.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt16.Type,
    forKey key: K
  ) throws -> UInt16? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(UInt16.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt32.Type,
    forKey key: K
  ) throws -> UInt32? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(UInt32.self, forKey: key)
  }

  override internal func decodeIfPresent<K: CodingKey>(
    _ type: UInt64.Type,
    forKey key: K
  ) throws -> UInt64? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(UInt64.self, forKey: key)
  }

  override internal func decodeIfPresent<T: Decodable, K: CodingKey>(
    _ type: T.Type,
    forKey key: K
  ) throws -> T? {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.decodeIfPresent(T.self, forKey: key)
  }

  override internal func nestedContainer<NestedKey, K: CodingKey>(
    keyedBy type: NestedKey.Type,
    forKey key: K
  ) throws -> KeyedDecodingContainer<NestedKey> {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.nestedContainer(keyedBy: NestedKey.self, forKey: key)
  }

  override internal func nestedUnkeyedContainer<K: CodingKey>(
    forKey key: K
  ) throws -> UnkeyedDecodingContainer {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.nestedUnkeyedContainer(forKey: key)
  }

  override internal func superDecoder() throws -> Decoder {
    return try concrete.superDecoder()
  }

  override internal func superDecoder<K: CodingKey>(forKey key: K) throws -> Decoder {
    assert(K.self == Key.self)
    let key = unsafeBitCast(key, to: Key.self)
    return try concrete.superDecoder(forKey: key)
  }
}

//
//  _JSONKeyedEncodingContainer.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/28.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

import Foundation

// MARK: - Encoding Containers
struct _JSONKeyedEncodingContainer<K : CodingKey> : KeyedEncodingContainerProtocol {
    typealias Key = K

    // MARK: Properties
    /// A reference to the encoder we're writing to.
    private let encoder: __JSONEncoder

    /// A reference to the container we're writing to.
    private let container: NSMutableDictionary

    /// The path of coding keys taken to get to this point in encoding.
    private(set) public var codingPath: [CodingKey]

    // MARK: - Initialization
    /// Initializes `self` with the given references.
    init(referencing encoder: __JSONEncoder, codingPath: [CodingKey], wrapping container: NSMutableDictionary) {
        self.encoder = encoder
        self.codingPath = codingPath
        self.container = container
    }

    // MARK: - Coding Path Operations
    private func _converted(_ key: CodingKey) -> CodingKey {
        switch encoder.options.keyEncodingStrategy {
        case .useDefaultKeys:
            return key
        case .convertToSnakeCase:
            let newKeyString = JSONEncoder.KeyEncodingStrategy._convertToSnakeCase(key.stringValue)
            return _JSONKey(stringValue: newKeyString, intValue: key.intValue)
        case .custom(let converter):
            return converter(codingPath + [key])
        }
    }

    // MARK: - KeyedEncodingContainerProtocol Methods
    public mutating func encodeNil(forKey key: Key) throws {
        self.container[_converted(key).stringValue] = NSNull()
    }
    public mutating func encode(_ value: Bool, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: Int, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: Int8, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: Int16, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: Int32, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: Int64, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: UInt, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: UInt8, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: UInt16, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: UInt32, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: UInt64, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }
    public mutating func encode(_ value: String, forKey key: Key) throws {
        self.container[_converted(key).stringValue] = self.encoder.box(value)
    }

    public mutating func encode(_ value: Float, forKey key: Key) throws {
        // Since the float may be invalid and throw, the coding path needs to contain this key.
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[_converted(key).stringValue] = try self.encoder.box(value)
    }

    public mutating func encode(_ value: Double, forKey key: Key) throws {
        // Since the double may be invalid and throw, the coding path needs to contain this key.
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[_converted(key).stringValue] = try self.encoder.box(value)
    }

    public mutating func encode<T : Encodable>(_ value: T, forKey key: Key) throws {
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[_converted(key).stringValue] = try self.encoder.box(value)
    }

    public mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> {
        let containerKey = _converted(key).stringValue
        let dictionary: NSMutableDictionary
        if let existingContainer = self.container[containerKey] {
            precondition(
                existingContainer is NSMutableDictionary,
                "Attempt to re-encode into nested KeyedEncodingContainer<\(Key.self)> for key \"\(containerKey)\" is invalid: non-keyed container already encoded for this key"
            )
            dictionary = existingContainer as! NSMutableDictionary
        } else {
            dictionary = NSMutableDictionary()
            self.container[containerKey] = dictionary
        }

        self.codingPath.append(key)
        defer { self.codingPath.removeLast() }

        let container = _JSONKeyedEncodingContainer<NestedKey>(referencing: self.encoder, codingPath: self.codingPath, wrapping: dictionary)
        return KeyedEncodingContainer(container)
    }

    public mutating func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        let containerKey = _converted(key).stringValue
        let array: NSMutableArray
        if let existingContainer = self.container[containerKey] {
            precondition(
                existingContainer is NSMutableArray,
                "Attempt to re-encode into nested UnkeyedEncodingContainer for key \"\(containerKey)\" is invalid: keyed container/single value already encoded for this key"
            )
            array = existingContainer as! NSMutableArray
        } else {
            array = NSMutableArray()
            self.container[containerKey] = array
        }

        self.codingPath.append(key)
        defer { self.codingPath.removeLast() }
        return _JSONUnkeyedEncodingContainer(referencing: self.encoder, codingPath: self.codingPath, wrapping: array)
    }

    public mutating func superEncoder() -> Encoder {
        return __JSONReferencingEncoder(referencing: self.encoder, key: _JSONKey.super, convertedKey: _converted(_JSONKey.super), wrapping: self.container)
    }

    public mutating func superEncoder(forKey key: Key) -> Encoder {
        return __JSONReferencingEncoder(referencing: self.encoder, key: key, convertedKey: _converted(key), wrapping: self.container)
    }
}

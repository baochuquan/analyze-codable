//
//  EncodingError.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/27.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

//===----------------------------------------------------------------------===//
// Errors
//===----------------------------------------------------------------------===//
/// An error that occurs during the encoding of a value.
public enum EncodingError: Error {
  /// The context in which the error occurred.
  public struct Context: ConcurrentValue {
    /// The path of coding keys taken to get to the point of the failing encode
    /// call.
    public let codingPath: [CodingKey]

    /// A description of what went wrong, for debugging purposes.
    public let debugDescription: String

    /// The underlying error which caused this error, if any.
    public let underlyingError: Error?

    /// Creates a new context with the given path of coding keys and a
    /// description of what went wrong.
    ///
    /// - parameter codingPath: The path of coding keys taken to get to the
    ///   point of the failing encode call.
    /// - parameter debugDescription: A description of what went wrong, for
    ///   debugging purposes.
    /// - parameter underlyingError: The underlying error which caused this
    ///   error, if any.
    public init(
      codingPath: [CodingKey],
      debugDescription: String,
      underlyingError: Error? = nil
    ) {
      self.codingPath = codingPath
      self.debugDescription = debugDescription
      self.underlyingError = underlyingError
    }
  }

  /// An indication that an encoder or its containers could not encode the
  /// given value.
  ///
  /// As associated values, this case contains the attempted value and context
  /// for debugging.
  case invalidValue(Any, Context)

  // MARK: - NSError Bridging
  // CustomNSError bridging applies only when the CustomNSError conformance is
  // applied in the same module as the declared error type. Since we cannot
  // access CustomNSError (which is defined in Foundation) from here, we can
  // use the "hidden" entry points.
  public var _domain: String {
    return "NSCocoaErrorDomain"
  }

  public var _code: Int {
    switch self {
    case .invalidValue: return 4866
    }
  }

  public var _userInfo: AnyObject? {
    // The error dictionary must be returned as an AnyObject. We can do this
    // only on platforms with bridging, unfortunately.
    #if _runtime(_ObjC)
      let context: Context
      switch self {
      case .invalidValue(_, let c): context = c
      }

      var userInfo: [String: Any] = [
        "NSCodingPath": context.codingPath,
        "NSDebugDescription": context.debugDescription
      ]

      if let underlyingError = context.underlyingError {
        userInfo["NSUnderlyingError"] = underlyingError
      }

      return userInfo as AnyObject
    #else
      return nil
    #endif
  }
}

extension EncodingError {
    /// Returns a `.invalidValue` error describing the given invalid floating-point value.
    ///
    ///
    /// - parameter value: The value that was invalid to encode.
    /// - parameter path: The path of `CodingKey`s taken to encode this value.
    /// - returns: An `EncodingError` with the appropriate path and debug description.
    fileprivate static func _invalidFloatingPointValue<T : FloatingPoint>(_ value: T, at codingPath: [CodingKey]) -> EncodingError {
        let valueDescription: String
        if value == T.infinity {
            valueDescription = "\(T.self).infinity"
        } else if value == -T.infinity {
            valueDescription = "-\(T.self).infinity"
        } else {
            valueDescription = "\(T.self).nan"
        }

        let debugDescription = "Unable to encode \(valueDescription) directly in JSON. Use JSONEncoder.NonConformingFloatEncodingStrategy.convertToString to specify how the value should be encoded."
        return .invalidValue(value, EncodingError.Context(codingPath: codingPath, debugDescription: debugDescription))
    }
}

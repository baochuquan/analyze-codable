//
//  _JSONDecodingStorage.swift
//  InterviewSwift
//
//  Created by baochuquan on 2021/9/28.
//  Copyright © 2021 chuquan.me. All rights reserved.
//

import Foundation

// MARK: - Decoding Storage
struct _JSONDecodingStorage {
    // MARK: Properties
    /// The container stack.
    /// Elements may be any one of the JSON types (NSNull, NSNumber, String, Array, [String : Any]).
    private(set) var containers: [Any] = []

    // MARK: - Initialization
    /// Initializes `self` with no containers.
    init() {}

    // MARK: - Modifying the Stack
    var count: Int {
        return self.containers.count
    }

    var topContainer: Any {
        precondition(!self.containers.isEmpty, "Empty container stack.")
        return self.containers.last!
    }

    mutating func push(container: __owned Any) {
        self.containers.append(container)
    }

    mutating func popContainer() {
        precondition(!self.containers.isEmpty, "Empty container stack.")
        self.containers.removeLast()
    }
}

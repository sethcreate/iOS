//
//  UA.swift
//  UA
//
//  Created by ghui on 2021/8/24.
//  Copyright © 2021 lessmore.io. All rights reserved.
//

import Foundation

enum UA: String {
    case wap
    case web

    static let key = "user-agent"

    func value() -> String {
        let value: String
        switch self {
            case .wap:
                value = "Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1"
                break
            case .web:
                value = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.78"
        }
        return value
    }
}

//
//  LCMemoryCache.swift
//
//
//  Created by Licardo on 2020/7/1.
//

import Cocoa

/**
 *  缓存 主要是缓存节气信息
 */
struct LCMemoryCache {
    var current: Int? {
        didSet {
            clear()
        }
    }
    
    var cache: [String: Any?]
    
    init() {
        cache = [String: Any?]()
    }
    
    public func get(key: String) -> Any? {
        let a = cache[key] ?? nil
        return a
    }
    
    public mutating func setKey(_ key: String, Value value: Any?) {
        cache[key] = value
    }
    
    private mutating func clear() {
        cache.removeAll()
    }
}

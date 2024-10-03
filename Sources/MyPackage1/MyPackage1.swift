// The Swift Programming Language
// https://docs.swift.org/swift-book

import MyPackage2

public struct MyPackage1 {
    public var name: String = "MyPackage1_2"
    
    public init() { }
    
    public func demo1() -> String {
        "\(name) \(Foo().foo())"
    }
}

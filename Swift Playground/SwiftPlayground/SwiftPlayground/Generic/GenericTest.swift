//
//  GenericTest.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/09.
//

import Foundation

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

protocol SuffixableContainer: Container {
    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
    func suffix(_ size: Int) -> Suffix
}

struct Stack<Element>: Container {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop(_ item: Element) -> Element {
        return items.removeLast()
    }
    
    mutating func append(_ item: Element) {
        self.push(item)
    }
    
    var count: Int { return items.count }
    
    subscript(i: Int) -> Element { return items[i] }
}

extension Array: Container {}

extension Stack: SuffixableContainer {
    func suffix(_ size: Int) -> Stack {
        var result = Stack()
        
        for index in (count - size)..<count {
            result.append(self[index])
        }
        
        return result
    }
}

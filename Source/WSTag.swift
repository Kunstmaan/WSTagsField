//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public protocol WSTag {
    
    var text: String { get }
    
}

public struct WSDefaultTag: WSTag {
    
    public let text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var hashValue: Int {
        get {
            return self.text.hashValue
        }
    }
    
}

func ==(lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.text == rhs.text
}

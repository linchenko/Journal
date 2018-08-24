//
//  Entry Controller.swift
//  Journal
//
//  Created by Levi Linchenko on 22/08/2018.
//  Copyright © 2018 Levi Linchenko. All rights reserved.
//

import Foundation


class Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        if lhs.timestamp != rhs.timestamp {return false}
        if lhs.title != rhs.title {return false}
        if lhs.bodyText != rhs.bodyText {return false}
        return true
    }
    
    
    
    var timestamp: Date
    var title: String
    var bodyText: String
    
    init(timestamp: Date = Date(), title: String, bodyText: String) {
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
}

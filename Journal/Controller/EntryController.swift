//
//  Entry Controller.swift
//  Journal
//
//  Created by Levi Linchenko on 22/08/2018.
//  Copyright © 2018 Levi Linchenko. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    var entries: [Entry] = []
    
    func addEntryWith(title: String, bodyText: String) {
        let entry = Entry(title: title, bodyText: bodyText)
        entries.append(entry)
        
    }
    
    func remove(entry: Entry) {
        guard let index = entries.index(of: entry) else {return}
        entries.remove(at: index)
    }
    
    func update(existingEntry: Entry, newTitle: String, bodyText: String) {
        existingEntry.title = newTitle
        existingEntry.bodyText =  bodyText
        existingEntry.timestamp = Date()
    }
    
    
}

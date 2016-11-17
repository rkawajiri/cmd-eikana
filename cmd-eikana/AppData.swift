//
//  AppData.swift
//  ⌘英かな
//
//  MIT License
//  Copyright (c) 2016 iMasanari
//

import Cocoa

struct AppData {
    let name: String
    let id: String
    
    init(name: String, id: String) {
        self.name = name
        self.id = id
    }

    init() {
        self.name = ""
        self.id = ""
    }
    
    init?(dictionary : [AnyHashable: Any]) {
        if let name = dictionary["name"] as? String, let id = dictionary["id"] as? String {
            self.name = name
            self.id = id
        }
        else {
            return nil
        }
    }
    
    func toDictionary() -> [AnyHashable: Any] {
        return [
            "name": self.name,
            "id": self.id
        ]
    }
}



//
//  KeyMapping.swift
//  ⌘英かな
//
//  MIT License
//  Copyright (c) 2016 iMasanari
//

import Cocoa

struct KeyMapping {
    var input: KeyboardShortcut
    var output: KeyboardShortcut
    let enable: Bool
    
    init(input: KeyboardShortcut, output: KeyboardShortcut, enable: Bool = true) {
        self.input = input
        self.output = output
        self.enable = enable
    }
    
    init() {
        input = KeyboardShortcut()
        output = KeyboardShortcut()
        self.enable = true
    }
    
    init?(dictionary : [AnyHashable: Any]) {
        if let inputKeyDic = dictionary["input"] as? [AnyHashable: Any],
            let inputKey = KeyboardShortcut(dictionary: inputKeyDic),
            let outputKeyDic = dictionary["output"] as? [AnyHashable: Any],
            let outputKey = KeyboardShortcut(dictionary: outputKeyDic),
            let enable = dictionary["enable"] as? Bool {
            
            self.input = inputKey
            self.output = outputKey
            self.enable = enable
        }
        
        else {
            return nil
        }
    }
    
    func toDictionary() -> [AnyHashable: Any] {
        return [
            "input": input.toDictionary(),
            "output": output.toDictionary(),
            "enable": enable
        ]
    }
}


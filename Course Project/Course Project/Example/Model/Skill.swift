//
//  Skill.swift
//  Course Project
//
//  Created by Harsh Shah on 2017-12-20.
//  Copyright © 2017 ProDigi. All rights reserved.
//

import Foundation

public class Skill {
    public let type: String
    
    
    init(type: String) {
        self.type = type
        
    }
    
    public func returnType() -> String {
        return "Harsh Knows \(self.type) "
    }
}


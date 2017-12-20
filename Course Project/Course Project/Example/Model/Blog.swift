//
//  Blog.swift
//  Course Project
//
//  Created by Marcel Harvan on 2017-12-19.
//  Copyright © 2017 ProDigi. All rights reserved.
//

import Foundation


public class Blog {
    public let title: String
    public let dateReleased: String
    public let link: String
    
    init(title: String, dateReleased: String, link: String) {
        self.title = title
        self.dateReleased = dateReleased
        self.link = link
    }
}

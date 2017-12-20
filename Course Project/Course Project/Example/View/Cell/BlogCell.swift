//
//  BlogCell.swift
//  Course Project
//
//  Created by Marcel Harvan on 2017-12-20.
//  Copyright © 2017 ProDigi. All rights reserved.
//

import UIKit

class BlogCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var link: UILabel!
    

    func configureCell (blog: Blog) {
        title.text = "\(blog.title)"
        date.text = "\(blog.dateReleased)"
        link.text = "\(blog.link)"
    }
    


}

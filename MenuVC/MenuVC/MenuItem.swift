//
//  MenuItem.swift
//  MenuVC
//
//  Created by Shailendra Kumar Ram on 18/11/19.
//  Copyright © 2019 nitin chawla. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    var nameString:String = ""
    var viewString:String = ""
    
    init(name: String, filevc: String) {
        self.nameString = name
        self.viewString = filevc
    }
}


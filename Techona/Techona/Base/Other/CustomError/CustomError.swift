//
//  CustomError.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

struct CustomError {
    
    var message = "File not found"
    
    init() { }
    
    init(error: Error?) {
        message = error?.localizedDescription ?? ""
    }
}

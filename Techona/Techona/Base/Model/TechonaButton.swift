//
//  TechonaButton.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

enum ButtonType: Int {
    case center
    case left
    case right
}

struct TechonaButton: Codable {
    var companyName = ""
    var title = ""
    private var type = 0
    
    var buttonType: ButtonType {
        return ButtonType(rawValue: type) ?? .center
    }
}

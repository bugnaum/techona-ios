//
//  ComponentCellDTO.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation
import UIKit

struct ComponentCellDTO {
    var companyName = ""
    var buttonTitle = ""
}

protocol TapButton: class {
    func didTapButton(name: String)
}

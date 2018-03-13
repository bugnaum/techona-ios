//
//  LeftButtonCell.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import UIKit

class LeftButtonCell: UITableViewCell {

    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    
    func fill(dto: ComponentCellDTO) {
        companyNameLabel.text = dto.companyName
        leftButton.setTitle(dto.buttonTitle, for: .normal)
    }
}

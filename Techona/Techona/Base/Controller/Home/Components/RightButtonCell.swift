//
//  RightButtonCell.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import UIKit

class RightButtonCell: UITableViewCell {

    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    
    func fill(dto: ComponentCellDTO) {
        companyNameLabel.text = dto.companyName
        rightButton.setTitle(dto.buttonTitle, for: .normal)
    }
}

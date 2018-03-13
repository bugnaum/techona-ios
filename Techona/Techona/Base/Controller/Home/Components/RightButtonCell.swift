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
    private weak var delegate: TapButton?
    
    func fill(dto: ComponentCellDTO, delegate: TapButton) {
        self.delegate = delegate
        companyNameLabel.text = dto.companyName
        rightButton.setTitle(dto.buttonTitle, for: .normal)
    }
    
    @IBAction func showAlert() {
        delegate?.didTapButton(name: rightButton.titleLabel?.text ?? "")
    }
}

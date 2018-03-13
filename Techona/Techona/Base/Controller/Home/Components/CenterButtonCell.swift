//
//  CenterButtonCell.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import UIKit

class CenterButtonCell: UITableViewCell {

    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var centerButton: UIButton!
    private weak var delegate: TapButton?
    
    func fill(dto: ComponentCellDTO, delegate: TapButton) {
        self.delegate = delegate
        companyNameLabel.text = dto.companyName
        centerButton.setTitle(dto.buttonTitle, for: .normal)
    }
    
    @IBAction func showAlert() {
        delegate?.didTapButton(name: centerButton.titleLabel?.text ?? "")
    }
}

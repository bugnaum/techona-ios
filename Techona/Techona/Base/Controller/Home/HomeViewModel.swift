//
//  HomeViewModel.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    private weak var delegate: LoadContent?
    private var buttons: [TechonaButton]?
    
    init(delegate: LoadContent) {
        self.delegate = delegate
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows() -> Int {
        return buttons?.count ?? 0
    }
    
    func load() {
        MockedButtonRequest().request { [weak self] buttons, error in
            self?.buttons = buttons
            self?.delegate?.didLoadContent(message: error?.message)
        }
    }
    
    func typeForRow(index: Int) -> ButtonType {
        if let button = buttons?.object(index: index) {
            return button.buttonType
        }
        return .center
    }
    
    func dtoForRow(index: Int) -> ComponentCellDTO {
        if let button = buttons?.object(index: index) {
            return ComponentCellDTO(companyName: button.companyName, buttonTitle: button.title)
        }
        return ComponentCellDTO(companyName: "", buttonTitle: "")
    }
}

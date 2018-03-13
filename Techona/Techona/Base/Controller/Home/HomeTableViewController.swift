//
//  TableViewController.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import UIKit

protocol LoadContent: class {
    func didLoadContent(message: String?)
}

class HomeTableViewController: UITableViewController, LoadContent {

    private lazy var viewModel: HomeViewModel = HomeViewModel(delegate: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
    }
    
    func load() {
        showLoader()
        viewModel.load()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.typeForRow(index: indexPath.row) {
        case .center:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CenterButtonCell.self), for: indexPath) as? CenterButtonCell
            cell?.fill(dto: viewModel.dtoForRow(index: indexPath.row))
            return cell ?? UITableViewCell()
        case .left:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: LeftButtonCell.self), for: indexPath) as? LeftButtonCell
            cell?.fill(dto: viewModel.dtoForRow(index: indexPath.row))
            return cell ?? UITableViewCell()
        case .right:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RightButtonCell.self), for: indexPath) as? RightButtonCell
            cell?.fill(dto: viewModel.dtoForRow(index: indexPath.row))
            return cell ?? UITableViewCell()
        }
    }
    
    // MARK: - LoadContent
    func didLoadContent(message: String?) {
        dismissLoader()
        
        if let message = message {
            showDefaultAlert(message: message, completeBlock: nil)
            return
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

//
//  UIViewController+Extensions.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showLoader() {
        DispatchQueue.main.async {
            let loader = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
            loader.color = .red
            loader.center = UIApplication.shared.keyWindow?.center ?? CGPoint()
            loader.startAnimating()
            UIApplication.shared.keyWindow?.addSubview(loader)
        }
    }
    
    func dismissLoader() {
        DispatchQueue.main.async {
            if let loader = UIApplication.shared.keyWindow?.subviews.filter({ $0 is UIActivityIndicatorView }).first as? UIActivityIndicatorView {
                loader.stopAnimating()
                loader.removeFromSuperview()
            }
        }
    }
    
    func showDefaultAlert(message: String, completeBlock: ((UIAlertAction) -> Void)?) {
        let alertController = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: completeBlock)
        alertController.addAction(action)
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

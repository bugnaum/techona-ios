//
//  Requestable.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

protocol Requestable: class {
    associatedtype DataType
    func request(completion: @escaping (_ result: DataType?, _ error: CustomError?) -> Void)
}


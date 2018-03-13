//
//  DeserelizableOperator.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

infix operator <-->

func <--> <T: Codable>(json: Data?, handle: (type: T.Type, error: Error?)) -> (model: T?, error: CustomError?) {
    
    if let error = handle.error {
        return (nil, CustomError(error: error))
    }
    
    guard let data = json else {
        return (nil, CustomError(error: handle.error))
    }
    
    guard let model = try? JSONDecoder().decode(T.self, from: data) else {
        return (nil, CustomError())
    }
    
    return (model, nil)
}

//
//  MockedButtonsRequest.swift
//  Techona
//
//  Created by Bruno Santos on 13/03/18.
//  Copyright © 2018 Bruno Santos. All rights reserved.
//

import Foundation

class MockedButtonRequest: Requestable {
    func request(completion: @escaping ([TechonaButton]?, CustomError?) -> Void) {
        if let path = Bundle.main.path(forResource: "techona-buttons", ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)  {
            let result = data <--> (TechonaModel.self, nil)
            completion(result.model?.buttons, result.error)
            return
        }
        completion(nil, CustomError())
    }
}

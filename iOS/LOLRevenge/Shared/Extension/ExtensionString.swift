//
//  ExtensionString.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import Foundation

extension String {
    func toURL() -> URL? {
        if let url = URL(string: self) {
            return url
        } else {
            print("Invalid URL: \(self)")
            return nil
        }
    }
}

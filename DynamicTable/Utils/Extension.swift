//
//  Extension.swift
//  DynamicTable
//
//  Created by Nick Yang on 2022/1/8.
//

import Foundation
import UIKit

extension UITableViewCell {
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
}

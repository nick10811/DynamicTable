//
//  ComponentFactory.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/14.
//

import Foundation
import UIKit

enum PageType: CustomStringConvertible {
    case page1, page2, page3, page4

    // MARK: Factory Pattern
    var pageLayout: [BaseComponent] {
        switch self {
        case .page1: return [Component1(), TriggerComponent(), Component2(),    // 1st category
                             Component1(1), Component1(1), TriggerComponent(1), // 2nd category
                             Component4(2)]                                     // 3rd category
        case .page2: return [Component4(), Component3(), Component2()]
        case .page3: return [Component2(), Component2()]
        case .page4: return [Component3(), Component3(), Component1()]
        }
    }
    
    // page title
    var description: String {
        switch self {
        case .page1: return "Page 1"
        case .page2: return "Page 2"
        case .page3: return "Page 3"
        case .page4: return "Page 4"
        }
    }
    
    func getLayout(_ category: Int = 0) -> [BaseComponent] {
        return self.pageLayout.filter { component in
            return component.category == category
        }
    }
    
}

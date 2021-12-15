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
    var getPageLayout: [ComponentType] {
        switch self {
        case .page1: return [.component1(), .component2(), .triggerComponent(),    // 1st category
                             .component1(1), .component1(1), .triggerComponent(1), // 2nd category
                             .component4(2)]                                       // 3rd category
        case .page2: return [.component4(), .component3(), .component2()]
        case .page3: return [.component2(), .component2()]
        case .page4: return [.component3(), .component3(), .component1()]
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
    
}

enum ComponentType: CustomStringConvertible {
    case component1(_ category: Int = 0),
         component2(_ category: Int = 0),
         component3(_ category: Int = 0),
         component4(_ category: Int = 0),
         component5(_ category: Int = 0),
         component6(_ category: Int = 0),
         triggerComponent(_ category: Int = 0)
    
    var backgroundColor: UIColor {
        switch self {
        case .component1: return .yellow
        case .component2: return .blue
        case .component3: return .green
        case .component4: return .orange
        case .triggerComponent: return .red
        default: return .clear
        }
    }
    
    var category: Int {
        switch self {
        case .component1(let num): return num
        case .component2(let num): return num
        case .component3(let num): return num
        case .component4(let num): return num
        case .component5(let num): return num
        case .component6(let num): return num
        case .triggerComponent(let num): return num
        }
    }
    
    var hasNextCategory: Bool {
        switch self {
        case .triggerComponent: return true
        default: return false
        }
    }
    
    var description: String {
        switch self {
        case .component1: return "Component 1"
        case .component2: return "Component 2"
        case .component3: return "Component 3"
        case .component4: return "Component 4"
        case .component5: return "Component 5"
        case .component6: return "Component 6"
        case .triggerComponent: return "I have next category"
        }
    }
}

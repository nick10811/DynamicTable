//
//  ComponentFactory.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/14.
//

import Foundation
import UIKit

// MARK: - Factory Pattern
enum PageType: CustomStringConvertible {
    case page1, page2, page3, page4
    
    var getComponents: [ComponentType] {
        switch self {
        case .page1: return [.component1, .component2, .component3, .component4]
        case .page2: return [.component4, .component3, .component2]
        case .page3: return [.component2, .component2]
        case .page4: return [.component3, .component3, .component1]
        }
    }
    
    // vc title
    var description: String {
        switch self {
        case .page1: return "Page 1"
        case .page2: return "Page 2"
        case .page3: return "Page 3"
        case .page4: return "Page 4"
        }
    }
    
}

enum ComponentType {
    case component1, component2, component3, component4
    
    var backgroundColor: UIColor {
        switch self {
        case .component1: return .yellow
        case .component2: return .blue
        case .component3: return .green
        case .component4: return .orange
        }
    }
}

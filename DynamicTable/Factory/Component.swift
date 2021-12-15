//
//  Component.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/15.
//

import Foundation
import UIKit

class BaseComponent {
    var category: Int!
    var backgroundColor: UIColor { .clear }
    var hasNextCategory: Bool { false }
    var items: [Model]
    
    init(_ category: Int = 0) {
        self.category = category
        self.items = DataSource.generateData(category)
    }
    
    subscript (_ index: Int) -> Model {
        return items[index]
    }
}

class Component1: BaseComponent {
    override var backgroundColor: UIColor { .yellow }
    
}

class Component2: BaseComponent {
    override var backgroundColor: UIColor { .orange }

}

class Component3: BaseComponent {
    override var backgroundColor: UIColor { .green }
    
}

class Component4: BaseComponent {
    override var backgroundColor: UIColor { .blue }
    
}

class TriggerComponent: BaseComponent {
    override var backgroundColor: UIColor { .red }
    override var hasNextCategory: Bool { true }
}
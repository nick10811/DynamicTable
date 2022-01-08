//
//  ComponentCell.swift
//  DynamicTable
//
//  Created by Nick Yang on 2022/1/7.
//

import UIKit

protocol CellConfigurable {
    func config(for model: Model)
}

class ComponentCell1: UITableViewCell, CellConfigurable {
    func config(for model: Model) {
        self.backgroundColor = .yellow
        self.textLabel?.text = model.title
    }
    
}

class ComponentCell2: UITableViewCell, CellConfigurable {
    func config(for model: Model) {
        self.backgroundColor = .orange
        self.textLabel?.text = model.title
    }
    
}

class ComponentCell3: UITableViewCell, CellConfigurable {
    func config(for model: Model) {
        self.backgroundColor = .blue
        self.textLabel?.text = model.title
    }
    
}

class ComponentCell4: UITableViewCell, CellConfigurable {
    func config(for model: Model) {
        self.backgroundColor = .green
        self.textLabel?.text = model.title
    }
    
}

class ComponentTriggerCell: UITableViewCell, CellConfigurable {
    func config(for model: Model) {
        self.backgroundColor = .red
        self.textLabel?.text = model.title
    }
    
}

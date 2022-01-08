//
//  Model.swift
//  DynamicTable
//
//  Created by Nick Yang on 2022/1/8.
//

import Foundation

protocol Model {
    var title: String { get }
    var hasNextCategory: Bool { get }
}

struct Model1: Model {
    var title: String = String(describing: Model1.self)
    var hasNextCategory: Bool = false
}

struct Model2: Model {
    var title: String = String(describing: Model2.self)
    var hasNextCategory: Bool = false
}

struct Model3: Model {
    var title: String = String(describing: Model3.self)
    var hasNextCategory: Bool = false
}

struct Model4: Model {
    var title: String = String(describing: Model4.self)
    var hasNextCategory: Bool = false
}

struct MenuModel: Model {
    var title: String = "MenuModel"
    var hasNextCategory: Bool = true
}

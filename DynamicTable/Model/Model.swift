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
    var title: String = "Model1"
    var hasNextCategory: Bool = false
}

struct Model2: Model {
    var title: String = "Model2"
    var hasNextCategory: Bool = false
}

struct Model3: Model {
    var title: String = "Model3"
    var hasNextCategory: Bool = false
}

struct Model4: Model {
    var title: String = "Model4"
    var hasNextCategory: Bool = false
}

struct MenuModel: Model {
    var title: String = "MenuModel"
    var hasNextCategory: Bool = true
}

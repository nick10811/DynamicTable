//
//  DataSource.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

struct Model {
    var title: String
    
    init(_ category: Int) {
        title = "category:\(category)"
    }
}

class DataSource {
    static func generateData(_ section: Int = 0) -> [Model] {
        var dataSet: [Model] = []
        let max = Int.random(in: 2...10)
        for _ in 0...max {
            dataSet.append(Model(section))
        }
        return dataSet
    }
}

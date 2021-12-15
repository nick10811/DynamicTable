//
//  DataSource.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

struct Model {
    var title: String
    
    init(_ indexPath: IndexPath) {
        title = "[section:\(indexPath.section): item:\(indexPath.item)]"
    }
}

class DataSource {
    static func generateData(_ section: Int = 0) -> [Model] {
        var dataSet: [Model] = []
        let max = Int.random(in: 2...10)
        for i in 0...max {
            dataSet.append(Model(IndexPath(item: i, section: section)))
        }
        return dataSet
    }
}

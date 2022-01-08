//
//  DataSource.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

//struct Model {
//    var title: String
//    var hasNextCategory: Bool = Int.random(in: 0...10) % 2 == 0
//
//    init(_ indexPath: IndexPath) {
//        title = "[section:\(indexPath.section): item:\(indexPath.item)]"
//    }
//}

class DataSource {
    static func generateData(_ section: Int = 0) -> [Model] {
        return [Model1(), Model2(), Model3(), Model4(), MenuModel()]
    }
}

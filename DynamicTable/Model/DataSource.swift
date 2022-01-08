//
//  DataSource.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

class DataSource {
    static func generateData(_ section: Int = 0) -> [Model] {
        var dataSet: [Model] = []
        let max = Int.random(in: 2...10) // number of model
        for i in 1...max {
            if section == 0 && i == max {
                dataSet.append(MenuModel())
                break
            }
            
            let modelType = Int.random(in: 1...5)
            switch modelType {
            case 1: dataSet.append(Model1())
            case 2: dataSet.append(Model2())
            case 3: dataSet.append(Model3())
            case 4: dataSet.append(Model4())
            case 5: dataSet.append(MenuModel())
            default: continue
            }
        }
        return dataSet
    }
}

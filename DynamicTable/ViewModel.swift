//
//  ViewModel.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

protocol LoadingDelegate {
    func loadingDone()
    func loadingError(_ error: Error)
}

class ViewModel {
    var delegate: LoadingDelegate?
    
    private var dataSet: [Model] = []
    
    func loadData() {
        dataSet.removeAll()
        dataSet.append(contentsOf: DataSource.generateData())
    }
    
    func loadData(at: IndexPath) {
        
    }
    
    var numberOfItemsInSection: Int {
        get {
            return 1
        }
    }
    
    func numberOfItemsInSection(_ section: Int) -> Int {
        return dataSet.count
    }
    
    func modelForItemAt(_ indexPath: IndexPath) -> Model {
        return dataSet[indexPath.item]
    }
}


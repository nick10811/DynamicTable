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

struct Model {
    var title: String
    
    init(_ indexPath: IndexPath) {
        title = "[section:\(indexPath.section): item:\(indexPath.item)]"
    }
}

class ViewModel {
    var delegate: LoadingDelegate?
    
    func loadData() {
    }
    
    var numberOfItemsInSection: Int {
        get {
            return 1
        }
    }
    
    func numberOfItemsInSection(_ section: Int) -> Int {
        return 10
    }
    
    func modelForItemAt(_ indexPath: IndexPath) -> Model {
        return Model(indexPath)
    }
}


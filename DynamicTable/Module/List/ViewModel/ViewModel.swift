//
//  ViewModel.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import Foundation

protocol LoadingDelegate: AnyObject {
    func loadingDone()
    func loadingError(_ error: Error)
}

class ViewModel {
    weak var delegate: LoadingDelegate?
    
    struct SectionModel {
        var section: Int
        var items: [Model]
        
        subscript (_ index: Int) -> Model {
            return items[index]
        }
    }
    
    private var sectionSet: [SectionModel] = []
    
    func loadData() {
        sectionSet.removeAll()
        sectionSet.append(SectionModel(section: 0, items: DataSource.generateData()))
        delegate?.loadingDone()
    }
    
    func loadData(at: IndexPath) {
        sectionSet = sectionSet.filter{ $0.section <= at.section }
        
        let next = at.section + 1
        sectionSet.append(SectionModel(section: next, items: DataSource.generateData(next)))
        delegate?.loadingDone()
        
    }
    
    func cellIdentifier(for model: Model) -> String {
        // HINT: mapping Model & Component(Cell)
        switch model {
        case is Model1: return ComponentCell1.cellIdentifier()
        case is Model2: return ComponentCell2.cellIdentifier()
        case is Model3: return ComponentCell3.cellIdentifier()
        case is Model4: return ComponentCell4.cellIdentifier()
        case is MenuModel: return ComponentTriggerCell.cellIdentifier()
        default: return ""
        }
    }
    
    var numberOfItemsInSection: Int {
        get {
            return sectionSet.count
        }
    }
    
    func numberOfItemsInSection(_ section: Int) -> Int {
        return sectionSet[section].items.count
    }
    
    func modelForItemAt(_ indexPath: IndexPath) -> Model {
        return sectionSet[indexPath]
    }
}

extension Array {
    subscript(_ indexPath: IndexPath) -> Model {
        return (self[indexPath.section] as! ViewModel.SectionModel)[indexPath.item]
    }
}

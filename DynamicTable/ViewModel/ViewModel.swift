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
    var pageType: PageType
    weak var delegate: LoadingDelegate?
    
    private var sectionSet: [BaseComponent] = []
    
    init(_ type: PageType = .page1) {
        pageType = type
    }
    
    func loadData() {
        sectionSet.removeAll()
        sectionSet.append(contentsOf: pageType.getLayout())
        delegate?.loadingDone()
    }
    
    func loadData(at: Int) {
        sectionSet = sectionSet.filter{ $0.category <= at }
        
        let next = at + 1
        sectionSet.append(contentsOf: pageType.getLayout(next))
        delegate?.loadingDone()
        
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
    
    func modelForSectionAt(_ indexPath: IndexPath) -> BaseComponent {
        return modelForSectionAt(indexPath.section)
    }
    
    func modelForSectionAt(_ section: Int) -> BaseComponent {
        return sectionSet[section]
    }
}

extension Array {
    subscript(_ indexPath: IndexPath) -> Model {
        return (self[indexPath.section] as! BaseComponent)[indexPath.item]
    }
}

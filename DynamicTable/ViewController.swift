//
//  ViewController.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView!
    let cellIdentifier: String = "Cell"
    lazy var vm: ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        vm.delegate = self
    }
    
    func setupTableView() {
        self.tableView = UITableView()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.view.addSubview(self.tableView)
        self.tableView.frame = self.view.frame
        
        // constraints for auto-layout
        // HINT: AutoResize default is true for programmatically component
//        self.tableView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            self.tableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            self.tableView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
//            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
//            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
//            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
//        ])
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

}

// MARK:- UITableViewDataSource & UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return vm.numberOfItemsInSection
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.numberOfItemsInSection(section)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let model = vm.modelForItemAt(indexPath)
        cell.textLabel?.text = model.title
        return cell
    }
    
}

// MARK:- LoadingDelegate
extension ViewController: LoadingDelegate {
    func loadingDone() {
        self.tableView.reloadData()
    }
    
    func loadingError(_ error: Error) {
        let alert = UIAlertController(title: "Error", message: "somthing wrong", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}


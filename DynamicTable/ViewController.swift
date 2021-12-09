//
//  ViewController.swift
//  DynamicTable
//
//  Created by Nick Yang on 2021/12/9.
//

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        self.tableView = UITableView()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
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

// MARK: - UITableViewDataSource & UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
    }
    
}


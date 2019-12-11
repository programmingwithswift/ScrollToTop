//
//  ViewController.swift
//  ScrollToTop
//
//  Created by ProgrammingWithSwift on 2019/12/11.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var tableViewDataSource = Array(0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(self.tableViewDataSource[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.scrollToTop()
    }
    
    private func scrollToTop() {
        let topRow = IndexPath(row: 0,
                               section: 0)
        self.tableView.scrollToRow(at: topRow,
                                   at: .top,
                                   animated: true)
    }
}












































//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    @IBOutlet weak var tableView: UITableView!
//    var currentCount = Array(0...100)
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.tableView.delegate = self
//        self.tableView.dataSource = self
//
//        // Do any additional setup after loading the view.
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.currentCount.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell") {
//            cell.textLabel?.text = "\(self.currentCount[indexPath.row])"
//
//            return cell
//        }
//
//        return UITableViewCell()
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.scrollToTop()
//    }
//
//private func scrollToTop() {
//    let topRow = IndexPath(row: 0,
//                           section: 0)
//    self.tableView.scrollToRow(at: topRow,
//                               at: .top,
//                               animated: true)
//}
//}

//
//  NewsViewController.swift
//  TableViewExample
//
//  Created by Ruslan on 19.09.2020.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let tableViewArray = ["First item", "Second Item", "Third item"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

// MARK: - Table View Configuration

extension NewsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tableViewArray[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.cellForRow(at: indexPath)
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as!
            SecondViewController
        
        
        secondViewController.text = cell?.textLabel?.text
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        return indexPath
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Hi friend"
    }
}



